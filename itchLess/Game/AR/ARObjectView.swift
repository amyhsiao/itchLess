import SwiftUI
import ARKit
import SceneKit
import Vision

struct ARObjectView: UIViewRepresentable {
    var modelLimit: Int
    @Binding var isShowingEducation: Bool  // 用於顯示 EducationView

    func makeUIView(context: Context) -> ARSCNView {
        let arView = ARSCNView()
        context.coordinator.arView = arView
        arView.session.delegate = context.coordinator
        
        let configuration = ARWorldTrackingConfiguration()
        arView.session.run(configuration, options: [.resetTracking, .removeExistingAnchors])
        
        // 添加點擊偵測
        let tapGestureRecognizer = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handleTap(_:)))
        arView.addGestureRecognizer(tapGestureRecognizer)
        arView.isUserInteractionEnabled = true
        
        return arView
    }
    
    func updateUIView(_ uiView: ARSCNView, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self, modelLimit: modelLimit)
    }
    
    class Coordinator: NSObject, ARSessionDelegate {
        var parent: ARObjectView
        var arView: ARSCNView?
        var modelAdded = false
        var addedModelNode: SCNNode?
        var healthBarNode: SCNNode?
        var health = 5  // 初始化血量為3
        var modelCount = 0  // Track number of models placed
        var modelLimit: Int
 
        
        init(_ parent: ARObjectView, modelLimit: Int) {
            self.parent = parent
            self.modelLimit = modelLimit
        }
        
        func session(_ session: ARSession, didUpdate frame: ARFrame) {
            guard modelCount < modelLimit else {
                //print("已達模型創建上限: \(modelLimit)")
                return
            }
            
            let pixelBuffer = frame.capturedImage
            detectObject(in: pixelBuffer) { observations in
                for observation in observations {
                    if let topLabel = observation.labels.first(where: { $0.identifier == "teddy bear" }) {
                        print("辨識到 'keyboard'")
                        let bbox = observation.boundingBox
                        let center = CGPoint(x: bbox.midX, y: bbox.midY)
                        let hitTestResults = frame.hitTest(center, types: [.featurePoint, .estimatedHorizontalPlane, .existingPlaneUsingExtent])
                        if let hitTestResult = hitTestResults.first {
                            let position = SCNVector3(
                                x: hitTestResult.worldTransform.columns.3.x,
                                y: hitTestResult.worldTransform.columns.3.y,
                                z: hitTestResult.worldTransform.columns.3.z
                            )
                            print("準備在位置 \(position) 放置模型")
                            
                            DispatchQueue.main.async {
                                if self.addedModelNode == nil {
                                    let node = self.createModelNode()
                                    node.position = position
                                    self.arView?.scene.rootNode.addChildNode(node)
                                    self.addedModelNode = node
                                    self.modelCount += 1
                                    self.health = 5  // Reset health
                                    print("模型已放置在: \(position)")
                                    print("模型數目: \(self.modelCount)")
                                }

                            }
                        } else {
                            print("未找到合適的放置位置")
                        }
                    }
                }
            }
        }
        func detectObject(in image: CVPixelBuffer, completion: @escaping ([VNRecognizedObjectObservation]) -> Void) {
            guard let model = try? VNCoreMLModel(for: yolov8n().model) else { return }
            let request = VNCoreMLRequest(model: model) { request, error in
                guard let observations = request.results as? [VNRecognizedObjectObservation] else {
                    print("No results: \(error?.localizedDescription ?? "Unknown error")")
                    completion([])
                    return
                }
                completion(observations)
            }
            let handler = VNImageRequestHandler(cvPixelBuffer: image, orientation: .up, options: [:])
            try? handler.perform([request])
        }
        func createModelNode() -> SCNNode {
            guard let sceneURL = Bundle.main.url(forResource: "cute_monster", withExtension: "usdz") else {
                print("Failed to find 'cute_monster.usdz'")
                return SCNNode()
            }
            guard let modelScene = try? SCNScene(url: sceneURL, options: nil) else {
                print("Failed to load 'cute_monster.usdz'")
                return SCNNode()
            }
            let node = modelScene.rootNode.clone()
            node.scale = SCNVector3(0.03, 0.03, 0.03)
            node.eulerAngles.x = -.pi / 2

            let healthBarNode = createHealthBar()
            let healthTextNode = createHealthText(health: health, maxHealth: 5)

            healthBarNode.addChildNode(healthTextNode)
            node.addChildNode(healthBarNode)

            self.healthBarNode = healthBarNode
            self.health = 5  // Reset health to full
            updateHealthBar()  // Ensure health bar size is reset

            return node
        }
    
        func createHealthBar() -> SCNNode {

            let healthBarNode = SCNNode()
            let healthBarGeometry = SCNBox(width: 5.0, height: 0.3, length: 0.5, chamferRadius: 0.4)
            healthBarGeometry.firstMaterial?.diffuse.contents = UIColor.red
            healthBarNode.geometry = healthBarGeometry
            healthBarNode.position = SCNVector3(0, 0, 7)
            
            print("創建血量條: 尺寸 - \(healthBarGeometry.width), \(healthBarGeometry.height), \(healthBarGeometry.length), 位置 - \(healthBarNode.position)")
            return healthBarNode
        }
        
        func createHealthText(health: Int, maxHealth: Int) -> SCNNode {
            let textGeometry = SCNText(string: "\(health)/\(maxHealth)", extrusionDepth: 0.1)
            textGeometry.font = UIFont.systemFont(ofSize: 0.5)
            textGeometry.firstMaterial?.diffuse.contents = UIColor.white  // 文本颜色

            let textNode = SCNNode(geometry: textGeometry)
            textNode.scale = SCNVector3(2, 2, 2)  // 缩小文本大小以适合显示
            textNode.position = SCNVector3(-0.6, 0, -1.2)  // 根据需要调整文本位置
            
            textNode.eulerAngles.x = .pi / 2

            return textNode
        }
        @objc func handleTap(_ sender: UITapGestureRecognizer) {
            
            let location = sender.location(in: arView)
            if let query = arView?.raycastQuery(from: location, allowing: .estimatedPlane, alignment: .any) {
                let results = arView?.session.raycast(query)
                if let firstResult = results?.first {
                    let position = SCNVector3(firstResult.worldTransform.columns.3.x, firstResult.worldTransform.columns.3.y, firstResult.worldTransform.columns.3.z)
                    let hitNodes = arView?.scene.rootNode.childNodes.filter { node in
                        node == addedModelNode
                    }
                    if let node = hitNodes?.first {
                        health -= 1
                        updateHealthBar()  // Update health bar size
                        if health <= 0 {
                            node.removeFromParentNode()
                            addedModelNode = nil  // Clear reference to allow new model
                            modelAdded = false
                            
                            guard modelCount < modelLimit else {
                                print("移除最後一個")
                                parent.isShowingEducation = true  // 顯示教育視圖
                                return
                            }
                            
                        }
                    }
                }
            }
        }
        func updateHealthBar() {
            if let healthBar = self.healthBarNode, let healthBarGeometry = healthBar.geometry as? SCNBox {
                let newWidth = CGFloat(self.health) * 5.0 / 5.0
                healthBarGeometry.width = newWidth
                if let textNode = healthBar.childNodes.first as? SCNNode, let textGeometry = textNode.geometry as? SCNText {
                    textGeometry.string = "\(self.health)/5"  // Update text
                }
                print("更新血量條：新長度 - \(newWidth)")
            }
        }
    }
}

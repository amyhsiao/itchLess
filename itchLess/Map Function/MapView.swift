//
//  MapView.swift
//  itchLess
//
//  Created by 張銘育 on 2024/9/10.
//

import SwiftUI
import MapKit

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private var locationManager = CLLocationManager()
    @Published var region: MKCoordinateRegion?
    private var initialLocationSet = false  // 控制初始定位

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first else { return }
        if !initialLocationSet {
            region = MKCoordinateRegion(
                center: latestLocation.coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
            initialLocationSet = true  // 標記已設置初始位置
        }
    }
}

func openMapForPlace(latitude: Double, longitude: Double, name: String) {
    let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
    let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: nil)
    let mapItem = MKMapItem(placemark: placemark)
    mapItem.name = name
    mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
}

struct MapView: View {
    @ObservedObject private var locationManager = LocationManager()
    @State private var selectedLocation: Location?

    var body: some View {
        Group {
            if let region = locationManager.region {
                Map(coordinateRegion: .constant(region), annotationItems: locations) { location in
                    MapAnnotation(coordinate: location.coordinate) {
                        Button(action: {
                            self.selectedLocation = location
                        }) {
                            VStack {
                                if location.clubMember {
                                    Image(systemName: "cross.circle.fill")
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.white, .red)
                                } else {
                                    Image(systemName: "cross.circle.fill")
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.white, .gray)
                                }
                            }
                        }
                    }
                }
                .sheet(item: $selectedLocation) { location in
                    LocationDetailView(location: location)
                }
            } else {
                Text("Determining your location...")
            }
        }
        .mapControls {
            MapUserLocationButton()
        }
    }
}

struct LocationDetailView: View {
    let location: Location

    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .leading, spacing: 10) {
                    Text(location.name)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.primary)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.secondary)
                        Text(location.address)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                        Text(location.phone)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical)

                // 醫生預約看診連結
                ForEach(location.doctors, id: \.name) { doctor in
                    Link(destination: doctor.link) {
                        HStack {
                            if location.clubMember {
                                Image(systemName: "star.circle.fill")
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white, .yellow)
                                    .padding(1)
                                    .background(Color.primary)
                                    .clipShape(Circle())
                            } else {
                                Image(systemName: "star.circle.fill")
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white, .gray)
                                    .padding(1)
                                    .background(Color.primary)
                                    .clipShape(Circle())
                            }

                            Text(doctor.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Image(systemName: "stethoscope.circle.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white,.cyan)
                                .padding(1)
                                .background(Color.primary)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("預約看診")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .shadow(radius: 3)
                    }
                }

                Button(action: {
                    openMapForPlace(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude, name: location.name)
                }) {
                    Text("開啟導航")
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("詳細資訊", displayMode: .inline)
        }
    }
}

#Preview {
    MapView()
}

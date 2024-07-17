//
//  HomeView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/7.
//

import SwiftUI

struct HomeView: View {
    @State private var currentBannerIndex = 0
    let banners = ["Banner 1", "Banner 2", "Banner 3"]

    @State private var currentInfoIndex = 0
    let info = ["Info 1", "Info 2", "Info 3"]

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Yellow text box
                HStack {
                    Text("Various text displayed here")
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.75, alignment: .leading)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(8)
                    
                    // Red circle button
                    
                    /*Button(action: {
                     // Action to connect to another scene
                     }) */
                    NavigationLink(destination: ChatView())
                    {
                        Image("ic-chat")
                        //.fill(Color.pink)
                            .foregroundColor(.gray)
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .imageScale(.large)
                            .padding(.horizontal, -30)
                            .padding(.vertical, -30)
                    }
                }
                // Blue information banner
                
                TabView(selection: $currentInfoIndex) {
                    ForEach(0..<info.count, id: \.self) { index in
                        Text(info[index])
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .padding()
                            .background(
                                Color.blue.opacity(0.3)
                                    .frame(height: 250)
                            )
                            .cornerRadius(8)
                    }
                }
                .frame(height: 250)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                
                // Brown swipeable banner
                TabView(selection: $currentBannerIndex) {
                    ForEach(0..<banners.count, id: \.self) { index in
                        Text(banners[index])
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .padding()
                            .background(
                                Color.brown.opacity(0.3)
                                    .frame(height: 250)
                            )
                            .cornerRadius(8)
                    }
                }
                .frame(height: 250)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                
                Spacer()
            }
            .padding()
        }
       
    }
}

#Preview {
    HomeView()
}

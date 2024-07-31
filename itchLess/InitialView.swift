//
//  InitialView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/31.
//

import SwiftUI

struct InitialView: View {
    @State private var showContentView = false
    
    var body: some View {
        VStack(spacing: 0) {
            Image("bg-monsters")
                .resizable()
                //.aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all, edges: .top)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.6, alignment: .top)
            ZStack {
                Image("bg-pink")
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4, alignment: .bottom)
                    .ignoresSafeArea()
                VStack(spacing: 20){
                    Text("E 你的癢")
                        .font(.system(size: 64))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red:0.716, green: 0.456, blue: 0.656))
                    
                    Text("紀錄癢怪的襲擊，並培養\n你的怪獸，一起戰勝它們吧")
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red:0.588, green: 0.588, blue: 0.588))
                
                    Button(action: {
                        showContentView = true
                    }) {
                        
                        Image( "btn-start")
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
                .padding(.top, -70)
            }
            .ignoresSafeArea()
            
        }
        .padding()
        .fullScreenCover(isPresented: $showContentView) {
            ContentView()
        }
    }
}


#Preview {
    InitialView()
}

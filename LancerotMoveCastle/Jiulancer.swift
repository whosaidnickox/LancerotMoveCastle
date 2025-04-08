//
//  Jiulancer.swift
//  LancerotMoveCastle
//
//  Created by Nicolae Chivriga on 08/04/2025.
//

import SwiftUI

import Lottie

struct Jiulancer: View {
    @Environment(\.dismiss) var dismiss
    @State var shiuw: Bool = false
    var body: some View {
        ZStack {
            Image("bgsow")
                .resizable()
                .ignoresSafeArea()
            
            if !shiuw {
                VStack {
                    Image("blougd")
                        .resizable()
                        .scaledToFit()
                    
                    LottieView(animation: .named("coolcast"))
                        .playing(loopMode: .loop)
                        .resizable()
                        .frame(width: 140, height: 140)
                }
            }
            
            
            WKWebViewRepresentable(url: URL(string: "https://freepolicyourgheim.xyz/red/game/lancerot/")!)
            {
                vibritiks(catDeTare: .rigid)
                shiuw = false
            }
            .edgesIgnoringSafeArea(.all)
            
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Button(action: {
            self.dismiss()
        }, label: {
            Image("backImage")
        }))
    }
}


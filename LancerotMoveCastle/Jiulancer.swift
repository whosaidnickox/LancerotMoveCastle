//
//  Jiulancer.swift
//  LancerotMoveCastle
//
//  Created by Nicolae Chivriga on 08/04/2025.
//

import SwiftUI

import Lottie

struct Jiulancer: View {
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
                shiuw = false
            }
            .edgesIgnoringSafeArea(.all)
            
        }
        .asfeasnr()
    }
}


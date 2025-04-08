//
//  LoadinGculn.swift
//  LancerotMoveCastle
//
//  Created by Nicolae Chivriga on 08/04/2025.
//

import SwiftUI
import Lottie

struct LoadinGculn: View {
    @State var navigs: Bool = false
    var body: some View {
        ZStack {
            Image("bgsow")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: MenisViusk(), isActive: $navigs)
            VStack {
                Image("blougd")
                    .resizable()
                    .scaledToFit()
                
                LottieView(animation: .named("originsois"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 140, height: 140)
                
                Nosigwos()
            }
        }
        .asfeasnr()
        .onAppear() {
            vibritiks(catDeTare: .light)
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.4) {
                self.navigs = true
            }
        }
    }
}


func vibritiks(catDeTare: UIImpactFeedbackGenerator.FeedbackStyle) {
    let vibts = UIImpactFeedbackGenerator(style: catDeTare)
    vibts.impactOccurred()
}

//
//  Untitled.swift
//  LancerotMoveCastle
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI


struct MenisViusk: View {
    var body: some View {
        ZStack {
            Image("bgsow")
                .resizable()
                .ignoresSafeArea()
            
            VStack  {
                Image("blougd")
                
                HStack(spacing: 30) {
                    
                    NavigationLink {
                        InformationView()
                    } label: {
                        Image("information")
                            .resizable()
                            .scaledToFit()
                    }

                    NavigationLink {
                        Jiulancer()
                    } label: {
                        Image("playbtn")
                            .resizable()
                            .scaledToFit()
                    }

                    
                    
               
                    NavigationLink {
                        OptionsView()
                    } label: {
                        Image("settings")
                            .resizable()
                            .scaledToFit()
                    }

                   
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden()
    }
}

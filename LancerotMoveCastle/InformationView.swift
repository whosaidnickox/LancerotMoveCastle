//
//  InformationView.swift
//  LancerotMoveCastle
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI



struct InformationView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("bgsow")
                .resizable()
                .ignoresSafeArea()
            
             Image("information_leibl")
                .resizable()
                .scaledToFit()
                .padding(20)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Button(action: {
            self.dismiss()
        }, label: {
            Image("backImage")
        }))
    }
}

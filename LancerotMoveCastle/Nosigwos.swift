//
//  Nosigwos.swift
//  LancerotMoveCastle
//
//  Created by Nicolae Chivriga on 08/04/2025.
//

import SwiftUI

struct Nosigwos: View {
    private let text = "LOADING"
       // Create an array of offsets, one per character.
       @State private var offsets: [CGFloat] = Array(repeating: -300, count: "LOADING".count)

       var body: some View {
           HStack(spacing: 8) {
               // Create an array of characters from the text.
               let letters = Array(text)
               ForEach(0..<letters.count, id: \.self) { i in
                   Text(String(letters[i]))
                       .font(.system(size: 40, weight: .bold, design: .monospaced))
                       .foregroundColor(.white)
                       .offset(y: offsets[i])
                       .animation(
                           .interpolatingSpring(stiffness: 300, damping: 15)
                               .delay(Double(i) * 0.1),
                           value: offsets[i]
                       )
               }
           }
           .padding()
           .background(Color.yellow)
           .cornerRadius(20)
           .onAppear {
               // Drop each letter one by one.
               for i in 0..<text.count {
                   DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * 0.1) {
                       // Using withAnimation ensures that the state change is animated.
                       withAnimation {
                           offsets[i] = 0
                       }
                   }
               }
           }
       }
}

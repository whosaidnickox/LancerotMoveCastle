//
//  OptionsView.swift
//  LancerotMoveCastle
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI
import StoreKit


struct OptionsView: View {
    @Environment(\.requestReview) var requestReview
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("bgsow")
                .resizable()
                .ignoresSafeArea()
            
            Image("settings_container")
                .resizable()
                .scaledToFit()
                .padding(40)
                .overlay {
                    VStack {
                        Button {
                            self.requestReview()
                        } label: {
                            Image("rate_us")
                        }
                        
                        Button {
                            let email = "gostinec21@icloud.com"
                                     let subject = "Help Needed"
                                     let body = "Hi, I need help with..."
                                     let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
                                     let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""

                                     if let url = URL(string: "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)") {
                                         UIApplication.shared.open(url)
                                     }
                        } label: {
                            Image("contact_us_button")
                        }

                    }
                }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Button(action: {
            self.dismiss()
        }, label: {
            Image("backImage")
        }))
    }
}

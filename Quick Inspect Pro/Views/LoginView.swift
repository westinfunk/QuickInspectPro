//
//  LoginView.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/20/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoading = false
    @State var error: String = ""

    func signIn() {
        isLoading = true
    }
    
    var body: some View {
        NavigationView {
        VStack {
            Form {
                TextField("email", text: $email)
                SecureField("password", text: $password)
                HStack {
                    Spacer()
                    Button(action: signIn) {
                        Text("Submit")
                            .padding(7)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(12)
                    }
                    Spacer()
                }
            }
            }.navigationBarTitle("Login")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

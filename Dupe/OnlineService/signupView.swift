//
//  signupView.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-02-18.
//
import SwiftUI


public struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var authservice = AuthService.shared
    public var body: some View {
        ZStack{
            Color.retroAtariPrimary.ignoresSafeArea()
            VStack{
                Text("Sign up").font(.largeTitle)
                
                TextField("email",  text: $email )
                
                SecureField("password",text: $password )
                
                Button(action:{
                    authservice.signup(
                        email: email,
                        password: password
                    )
                })
                {
                    Text("sign in").frame(maxWidth: .infinity)
                }
                
                if let err = authservice.errorMessage {
                    Text(err).foregroundColor(.red)
                }
                
            }
            .textFieldStyle(.roundedBorder)
            .font(Font.title).bold()
            .buttonStyle(.borderedProminent)
            .padding(20)
        }
        
    }
    
}

#Preview {
    SignUpView()
}

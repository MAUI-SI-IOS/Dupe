//
//  loginView.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//
import SwiftUI

struct LoginView: View{
    @State var email: String = ""
    @State var password: String = ""
    
    @State private var authservice = AuthService.shared
        var body: some View {
            NavigationStack {
                VStack(alignment: .center, spacing: 20){
                    
                    Text("This app accepts google accounts only")
                    
                    Spacer()
                    
     
                    VStack(alignment: .leading, spacing: 20){
                        TextField("email", text:$email)
                        
                        SecureField("password", text:$password)
                        
                        Button(action: login ){
                            Text("login").frame(maxWidth: .infinity)
                        }
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: SignUpView()){
                        Text("i don't have an account").frame(maxWidth: .infinity)
                    }
                }
                .font(Font.title.bold())
                .padding()
                .textFieldStyle(.roundedBorder)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
    func login(){
        authservice.login(email: email, password: password);
    }
    
}



#Preview {
    LoginView()
}

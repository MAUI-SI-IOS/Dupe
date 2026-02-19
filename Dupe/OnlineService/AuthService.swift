//
//  FetchService.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import Foundation
import FirebaseAuth
import Observation

@Observable
class AuthService{
    static let shared = AuthService()
    var errorMessage: String?
    var user: User?
        
    private init(){}
    
    func signup(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password){ result, error in
                if let err = error {
                    self.errorMessage = err.localizedDescription
                    return
                }
                self.errorMessage = nil
                self.user = result?.user
            }
    }
    
    func login(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password){
            result, error in
            if let err = error {
                self.errorMessage = err.localizedDescription
                return
            }
            self.errorMessage = nil
            self.user = result?.user
        }
    }
    
    func logout(){
        do {
            try Auth.auth().signOut()
            self.user = nil
        }
        catch {
            self.errorMessage = "error on logout"
        }
    }
}

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
                if let err = error as NSError? {
                        // 1. Get the friendly message for the UI
                        self.errorMessage = err.localizedDescription
                        
                        // 2. Get the "I hate Xcode" technical details for the console
                        print("--- DEBUG: FIREBASE ERROR ---")
                        print("Code: \(err.code)") // Check this against AuthErrorCode
                        print("Reason: \(err.localizedFailureReason ?? "No reason provided")")
                        print("User Info: \(err.userInfo)") // This usually contains the 'true' error from Google
                        return
                    }
                    
                self.errorMessage = nil
                //self.user = result?.user
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

//
//  DupeApp.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import SwiftUI

@main
struct DupeApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack{
                Color(.retroAtariPrimary).ignoresSafeArea()
                IndexView()
            }
        }
    }
}



//
//  Index.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import SwiftUI
import FirebaseAuth

enum Tabs: Hashable {
    case main
    case setting
    case rating
}


struct IndexView: View {
    @State private var currentView: Tabs = .main //if true Feature else setting
    @State private var authservice = AuthService.shared
    
    var body: some View {
        ZStack {
            Color.retroAtariPrimary.ignoresSafeArea()
            VStack {
                HStack {
                    if let email = authservice.user?.email {
                            Text("Welcome \(email)")
                    } else {
                            Text("Welcome")
                    }
                }
                .font(.largeTitle)
                .bold().padding()
                
                TabView(selection: $currentView) {
                    FeatureView() .tag(Tabs.main)
                    PersonnalView() .tag(Tabs.setting)
                    FeedBackView().tag(Tabs.rating)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .background(.clear)
                
            }
            .background(.clear)
        }
    }
        
}

#Preview {
    IndexView()
}

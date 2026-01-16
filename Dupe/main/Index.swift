//
//  Index.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import SwiftUI

enum Tabs: Hashable {
    case main
    case setting
    case rating
}


struct IndexView: View {
    @State private var currentView: Tabs = .main //if true Feature else setting
    
    var body: some View {
        VStack {
            HStack {
                Text("HI AGAIN, WELCOME BACK!!!")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Button(action: {}) { Image(systemName: "bulb") }
            }.padding()
            
            TabView(selection: $currentView) {
                FeatureView() .tag(Tabs.main)
                SettingView() .tag(Tabs.setting)
                FeedBackView().tag(Tabs.rating)
            }.tabViewStyle(.page(indexDisplayMode: .never))
            
        }
        .background(.retroAtariPrimary)
    }
        
}

#Preview {
    IndexView()
}

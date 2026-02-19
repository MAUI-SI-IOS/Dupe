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
        ZStack {
            Color.retroAtariPrimary.ignoresSafeArea()
            VStack {
                HStack {
                    Text(.introMessage)
                        .font(.largeTitle)
                        .bold()
                }.padding()
                
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

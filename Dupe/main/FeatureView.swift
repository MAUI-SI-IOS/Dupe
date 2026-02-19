//
//  FeatureView.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import SwiftUI

struct FeatureView: View {

    @State private var navigateToSetting: Bool = false
    @State private var dragOffset: CGSize = .zero
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.retroAtariPrimary.ignoresSafeArea()
                
                Grid(horizontalSpacing: 0, verticalSpacing: 0){
                    GridRow{
                        Image(systemName: "globe")
                        NavigationLink(destination: {}){
                            Text(.buttonRedundanceService)
                                .frame(width: 170, height: 170)
                                .background(.retroAtariYellow, in: RoundedRectangle(cornerRadius: 15))
                        }
                        
                    }
                    GridRow{
                        NavigationLink(destination: LoginView()){
                            Text(.buttonConnectionService)
                                .frame(width: 170, height: 170)
                                .background(.retroAtariRed, in: RoundedRectangle(cornerRadius: 15))
                        }
                        Image(systemName: "globe")
                    }
                }
                .foregroundColor(.black)
                .font(Font.title)
                .bold()
            }
        }
    }
}

#Preview {
    FeatureView()
}

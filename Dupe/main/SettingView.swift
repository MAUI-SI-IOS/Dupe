//
//  SettingView.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import SwiftUI

struct SettingView: View {
    var body: some View {

        VStack(spacing:50) {
            Grid(horizontalSpacing: 0, verticalSpacing: 0){
                GridRow{
                    Button(action: {}){
                        Text("Analytics")
                            .foregroundColor(.black)
                            .font(Font.title)
                            .bold()
                            .frame(width: 170, height: 170)
                            .background(.retroAtariCyan, in: RoundedRectangle(cornerRadius: 15))
                        }
                    Image(systemName: "globe")
                }
                GridRow{
                    Image(systemName: "globe")
                    Button(action: {}){
                        Text("Settings")
                            .foregroundColor(.black)
                            .font(Font.title)
                            .bold()
                            .frame(width: 170, height: 170)
                            .background(.gray, in: RoundedRectangle(cornerRadius: 15))
                    }
                }
            }
            .padding() 
        }
    
    }
}

#Preview {
    SettingView ()
}

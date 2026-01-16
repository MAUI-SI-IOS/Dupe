//
//  Index.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import SwiftUI

struct IndexView: View {
    var body: some View {
        VStack(spacing:50) {
            Text("\"InspirationQuote\"")
                .font(Font.largeTitle)
                .bold()
            Grid(horizontalSpacing: 0, verticalSpacing: 0){
                GridRow{
                    Image(systemName: "globe")
                    Button(action: {}){
                        Text("Check for Duplicates")
                            .foregroundColor(.black)
                            .font(Font.title)
                            .bold()
                            .frame(width: 170, height: 170)
                            .background(.retroAtariYellow, in: RoundedRectangle(cornerRadius: 15))
                    }
                }
                GridRow{
                    Button(action: {}){
                        Text("Online service")
                            .foregroundColor(.black)
                            .font(Font.title)
                            .bold()
                            .frame(width: 170, height: 170)
                            .background(.retroAtariRed, in: RoundedRectangle(cornerRadius: 15))
                    } 
                    Image(systemName: "globe")
                }
            }
            .padding()
            
            //button navigation here
        }
    }
}

#Preview {
    IndexView()
}

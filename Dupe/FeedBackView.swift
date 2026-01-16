//
//  FeedBackView.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//

import SwiftUI

struct FeedBackView: View {
    var body: some View {
        VStack(spacing:50) {
            Text("\"ratings\"")
                .font(Font.largeTitle)
                .bold()
            Grid(horizontalSpacing: 10, verticalSpacing: 0){
                GridRow{
                    Button(action: {}){
                        Text("Ratings")
                            .foregroundColor(.black)
                            .font(Font.title)
                            .bold()
                            .frame(width: 150, height: 150)
                            .background(.retroAtariGreen, in: RoundedRectangle(cornerRadius: 15))
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    FeedBackView()
}

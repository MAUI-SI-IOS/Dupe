//
//  analyticsView.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//
import SwiftUI

struct analyticsView: View {
    //DbService service
    
    var body: some View {
        VStack(spacing:20){
            HStack{
                Button(action:{/*expand()*/}) {
                    Text("{all photo deleted}")
                        .font(.largeTitle)
                        .bold()
                        .frame(width:170, height:170)
                        .background(.retroAtariCyan, in: RoundedRectangle(cornerRadius: 15))
                    
                }
                Image(systemName: "globe")
                    .frame(width:170, height:170)
            }
            Button(action:{/*expand()*/}) {
                Text("{space saved}")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth:.infinity)
                    .frame(height: 170)
                    .background(.retroAtariGreen, in: RoundedRectangle(cornerRadius: 15))
            }
            HStack{
                Image(systemName: "globe")
                    .frame(width:170, height:170)
                
                Button(action:{/*expand()*/}) {
                    Text("{photo deleted this week}")
                        .font(.largeTitle)
                        .bold()
                        .frame(width:170, height:170)
                        .background(.retroAtariYellow, in: RoundedRectangle(cornerRadius: 15))
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.retroAtariSecondary)
    }
}


#Preview {
    analyticsView()
}

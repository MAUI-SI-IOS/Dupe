//
//  SettingView.swift
//  Dupe
//
//  Created by William Descoteaux on 2026-01-16.
//
import SwiftUI


struct PersonnalView: View {
    @State private var analyticView: Bool = false
    @State private var settingView: Bool = false
    
    var body: some View {

        VStack(spacing:50) {
            Grid(horizontalSpacing: 0, verticalSpacing: 0){
                GridRow{
                    Button(action: { analyticView.toggle() }){
                        Text(.buttonAnalyticService)
                            .foregroundColor(.black)
                            .font(Font.title)
                            .bold()
                            .frame(width: 170, height: 170)
                            .background(.retroAtariCyan, in: RoundedRectangle(cornerRadius: 15))
                    }
                    .sheet(isPresented: $analyticView) {
                        analyticsView()
                    }
                    Image(systemName: "globe")
                }
                
                GridRow{
                    Image(systemName: "globe")
                    Button(action: {settingView.toggle()}){
                        Text(.buttonSettingService)
                            .foregroundColor(.black)
                            .font(Font.title)
                            .bold()
                            .frame(width: 170, height: 170)
                            .background(.gray, in: RoundedRectangle(cornerRadius: 15))
                    }
                    .sheet(isPresented: $settingView) {
                        //settingsView()
                    }
                }
            }
            .padding() 
        }
    
    }
}

#Preview {
    PersonnalView ()
}

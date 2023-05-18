//
//  SplashScreenView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 18/05/23.
//

import SwiftUI


struct SplashScreenView: View {
    var body: some View {
        VStack {
            Image("JohnnyJr")
                .resizable()
                .scaledToFit()
                .frame(width:300)
                
            Text("HABITO")
                .font(.largeTitle)
            Text("v.1.0")
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

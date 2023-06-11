//
//  IntroTextView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 10/06/23.
//

import SwiftUI

struct IntroTextView: View {
    var fontStyle: JournalFont = .font1
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding()
        .onAppear {
            UITextView.appearance().backgroundColor = .clear
        }
    }
}

struct IntroTextView_Previews: PreviewProvider {
    static var previews: some View {
        IntroTextView()
    }
}

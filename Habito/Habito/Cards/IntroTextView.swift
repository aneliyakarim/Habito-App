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
            Text("Hello Parent, welcome on board!")
                .font(.headline)
            Text("""
                 We're happy to help you build a bonding habits development experience with your child. 😍
                 
                 Quick help on how to do it in the Habito app:
                 ✅ During the day, record your child's daily habits by adding the cards to an Entry: pick up toys, recycle the trash, or add photos of any success, even a small one.🏆🥳
                 
                 ✅ Before going to bed, reflect with your child on what went well and what needs improvement, and reward activities with stars. You can exchange them for something physical like ice cream, toys, or fun experiences later. 🍭🍦🍪🪁🎢
                 
                 ✅ Use the Doodle card as a rewarding activity but monitor screen time. ☝️
                 
                 Have a lovely storytelling of your child's growth. 😍
                 """)
            
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

//
//  RewardView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 29/05/23.
//

import SwiftUI

struct RewardView: View {

    @Binding var reward: Int?
    
    private func starType(index: Int) -> String {
        
        if let reward = self.reward {
            return index <= reward ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    var body: some View {
        HStack {
            ForEach(1...5, id:\.self) { index in
                Image(systemName: self.starType(index: index))
                    .foregroundColor(Color.orange)
                    .onTapGesture {
                        self.reward = index
                    }
            }
        }
    }
}

struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView(reward: .constant(5))
    }
}

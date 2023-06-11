//
//  RewardView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 29/05/23.
//

import SwiftUI

struct RewardView: View {
   @Binding var refReward: Int
    
    var body: some View {
        HStack {
            ForEach(1...5, id:\.self) { index in
                Image(systemName: index <= refReward ? "star.fill" : "star")
                    .foregroundColor(Color.orange)
                    .onTapGesture {
                        refReward = index
                    }
            }
        }
    }
}

struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView(refReward: .constant(1))
    }
}

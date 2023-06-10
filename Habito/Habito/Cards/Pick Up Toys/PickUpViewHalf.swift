//
//  PickUpViewHalf.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 08/06/23.
//

import SwiftUI

struct PickUpViewHalf: View {
    @Binding var value: PickUpData
    @Binding var refReward: Int
    
    var isEditing: Bool
    var fontStyle: JournalFont
    
    var body: some View {
        VStack {
            Text(isEditing ? "Did you pick up your toys?" : "Toys are picked up")
                .foregroundColor(.darkBrown)
                .font(fontStyle.uiFont(15))
                .frame(maxWidth: .infinity, alignment: isEditing ? .leading : .center)
            
            Spacer()
            
            Image(systemName: "teddybear")
                .resizable()
                .frame(width: 100, height: 100)
            
            Spacer()
            
            Toggle(isOn: $value.isPickedUp1) {
                
            }
            .toggleStyle(CheckboxToggleStyle())
            
            Spacer()
            
            RewardView(refReward: $refReward)
        }
        .frame(minHeight: 100, maxHeight: 200)
        .padding()
    }
}

struct PickUpViewHalf_Previews: PreviewProvider {
    static var previews: some View {
        PickUpViewHalf(value: .constant(PickUpData(isPickedUp1: true)), refReward: .constant(3), isEditing: true, fontStyle: .font1)
        
    }
}

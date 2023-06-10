//
//  PickUpViewFull.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 08/06/23.
//

import SwiftUI

struct PickUpViewFull: View {
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
                .frame(height: 50)
            
            HStack {
                VStack {
                    Image(systemName: "teddybear")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Toggle(isOn: $value.isPickedUp1) {
                        
                    }
                    .toggleStyle(CheckboxToggleStyle())
                }
                
                Spacer()
                    .frame(width: 70)
                VStack {
                    Image(systemName: "soccerball")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Toggle(isOn: $value.isPickedUp2) {
                        
                    }
                    .toggleStyle(CheckboxToggleStyle())
                }
                Spacer()
                    .frame(width: 70)
                VStack {
                    Image(systemName: "pencil.and.ruler")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Toggle(isOn: $value.isPickedUp3) {
                        
                    }
                    .toggleStyle(CheckboxToggleStyle())
                }
            }
            
            Spacer()
            
            RewardView(refReward: $refReward)
        }
        .frame(minHeight: 100, maxHeight: 300)
        .padding()
    }
}

struct PickUpViewFull_Previews: PreviewProvider {
    static var previews: some View {
        PickUpViewFull(value: .constant(PickUpData(isPickedUp1: true, isPickedUp2: false, isPickedUp3: true)), refReward: .constant(3), isEditing: true, fontStyle: .font1)
    }
}

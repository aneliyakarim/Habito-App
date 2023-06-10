//
//  CleanPlanetViewHalf.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 01/06/23.
//

import SwiftUI


struct CleanPlanetViewHalf: View {
    @Binding var value: CleanPlanetData
    @Binding var refReward: Int
    
    var isEditing: Bool
    var fontStyle: JournalFont
    
    
    var body: some View {
        VStack {
            Text(isEditing ? "How many litter did you put in a bin?" : "Put into Bin")
                .foregroundColor(.darkBrown)
                .font(fontStyle.uiFont(15))
                .frame(maxWidth: .infinity, alignment: isEditing ? .leading : .center)
            
            Spacer()
            
            Text("\(Int(value.trash))")
                .modifier(FontStyle(size: 50))

            Spacer()
            
            if isEditing {
                Stepper("Trash to Bin", value: $value.trash, in: 0...99, step: 1)
                    .labelsHidden()
            }
            
            RewardView(refReward: $refReward)
        }
        .frame(minHeight: 100, maxHeight: 200)
        .padding()
    }
}

struct CleanPlanetViewHalf_Previews: PreviewProvider {
    static var previews: some View {
        CleanPlanetViewHalf(value: .constant(CleanPlanetData(trash: 5, recycle: 0)), refReward: .constant(3), isEditing: true, fontStyle: .font1)
    }
}

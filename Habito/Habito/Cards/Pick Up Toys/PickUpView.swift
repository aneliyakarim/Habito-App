//
//  PickUpView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 08/06/23.
//

import SwiftUI

struct PickUpView: View {
    @Binding var value: PickUpData
    @Binding var refReward: Int
    
    var isEditing: Bool
    var fontStyle: JournalFont
    var size: CardSize
    
//    static var disableMoodViewFull = false

    var body: some View {
        if size == .small {
            PickUpViewHalf(value: $value, refReward: $refReward, isEditing: isEditing, fontStyle: fontStyle)
        } else {
            PickUpViewFull(value: $value, refReward: $refReward, isEditing: isEditing, fontStyle: fontStyle)
        }

    }
}

struct PickUpView_Previews: PreviewProvider {
    static var previews: some View {
        PickUpView(value: .constant(PickUpData(isPickedUp1: true, isPickedUp2: true, isPickedUp3: false)), refReward: .constant(3), isEditing: false, fontStyle: JournalFont.font1, size: CardSize.large)
    }
}

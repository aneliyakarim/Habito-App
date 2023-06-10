//
//  CleanPlanetView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 02/06/23.
//

import SwiftUI

struct CleanPlanetView: View {
    @Binding var value: CleanPlanetData
    @Binding var refReward: Int
    
    var isEditing: Bool
    var fontStyle: JournalFont
    var size: CardSize
    
//    static var disableMoodViewFull = false

    var body: some View {
        if size == .small {
            CleanPlanetViewHalf(value: $value, refReward: $refReward, isEditing: isEditing, fontStyle: fontStyle)
        } else {
            CleanPlanetViewFull(value: $value, refReward: $refReward, isEditing: isEditing, fontStyle: fontStyle)
        }

    }
}

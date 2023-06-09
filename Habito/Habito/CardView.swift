//
//  CardView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 19/05/23.
//

import SwiftUI

struct CardView: View {
    @Binding var cardData: CardData
    var isEditing: Bool
    var fontStyle: JournalFont
    
    var body: some View {
        switch cardData.card {
        case .mood(let value):
            MoodView(value: Binding<String>( get: { value }, set: { cardData.card = .mood(value: $0) } ), isEditing: isEditing, fontStyle: fontStyle, size: cardData.size)
        case .sleep(let value):
            SleepView(value: Binding<Double>( get: { value }, set: { cardData.card = .sleep(value: $0) } ), isEditing: isEditing, fontStyle: fontStyle, size: cardData.size)
        case .sketch(let value):
            SketchView(value: Binding<[Line]>( get: { value }, set: { cardData.card = .sketch(value: $0) } ), isEditing: isEditing, fontStyle: fontStyle, size: cardData.size, refReward: $cardData.reward)
        case .photo(let value):
            PhotoView(value: Binding<ImageModel>( get: { value }, set: { cardData.card = .photo(value: $0) } ), isEditing: isEditing, fontStyle: fontStyle)
        case .text(let value):
            TextView(value: Binding<TextData>( get: { value }, set: { cardData.card = .text(value: $0) } ), isEditing: isEditing, fontStyle: fontStyle, refReward: $cardData.reward)
        case .cleanPlanet(let value):
            CleanPlanetView(value: Binding<CleanPlanetData>( get: { value }, set: { cardData.card = .cleanPlanet(value: $0) } ), refReward: $cardData.reward, isEditing: isEditing, fontStyle: fontStyle, size: cardData.size)
        case .pickUpToys(let value):
            PickUpView(value: Binding<PickUpData>( get: { value }, set: { cardData.card = .pickUpToys(value: $0) } ), refReward: $cardData.reward, isEditing: isEditing, fontStyle: fontStyle, size: cardData.size)
        case .introText:
            IntroTextView()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardData: .constant(CardData(card: .mood(value: "😢"))), isEditing: true, fontStyle: .font1)
            .background(CardBackground())
    }
}

//
//  TitleView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 19/05/23.
//

import SwiftUI

struct TitleView: View {
    @Binding var entry: Entry
    var isEditing: Bool = false
    var body: some View {
        ZStack {
            EntryBannerTheme(forTheme: entry.theme)
                .modifier(EntryBannerStyle(theme: entry.theme))
           
            VStack {
                if isEditing {
                    TextField("Add title", text: $entry.title)
                        .font(entry.font.uiFont(30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.darkBrown)
                } else {
                    Text(entry.title)
                        .font(entry.font.uiFont(30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.darkBrown)
                }
             
                Text(entry.createdOn, style: .date)
                    .font(entry.font.uiFont(15))
            }
        }
    }
}


struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(entry: .constant(Entry()), isEditing: false)
    }
}

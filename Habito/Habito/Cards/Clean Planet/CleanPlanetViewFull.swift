//
//  CleanPlanetViewFull.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 02/06/23.
//

import SwiftUI

struct CleanPlanetViewFull: View {
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
            
            AdaptiveView {
                HStack {
                    VStack {
                        Image(systemName: "trash")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .font(Font.system(size: 60, weight: .ultraLight))
                        Text("Waste")
                    }
                    .padding(.horizontal)
                    .frame(width: 110)
                    
                    VStack {
                        Text("\(Int(value.trash))")
                            .modifier(FontStyle(size: 50))
                        
                        if isEditing {
                            Stepper("Trash to Bin", value: $value.trash, in: 0...99, step: 1)
                                .labelsHidden()
                        }
                    }
                    .frame(minHeight: 100, maxHeight: 200)
                    .padding(.horizontal)
                }
                .frame(minHeight: 100, maxHeight: 200)
                .padding(.horizontal)
                
                HStack {
                    VStack{
                        Image("Universal Recycling Symbol (U+2672)")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                        Text("Recycled")
                    }
                    .padding(.horizontal)
                    .frame(width: 110)
                    
                    VStack {
                        Text("\(Int(value.recycle))")
                            .modifier(FontStyle(size: 50))
                        
                        if isEditing {
                            Stepper("Trash to Bin", value: $value.recycle, in: 0...99, step: 1)
                                .labelsHidden()
                        }
                    }
                    .frame(minHeight: 100, maxHeight: 200)
                    .padding(.horizontal)
                }
            }
            
            RewardView(refReward: $refReward)
                .padding(.top, 10)
        }
        .frame(minHeight: 100)
        .padding()
    }
}

// https://www.fivestars.blog/articles/adaptive-swiftui-views/
struct AdaptiveView<Content: View>: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        if horizontalSizeClass == .regular {
            HStack {
                content
            }
        } else {
            VStack {
                content
            }
        }
    }
}

struct CleanPlanetViewFull_Previews: PreviewProvider {
    static var previews: some View {
        CleanPlanetViewFull(value: .constant(CleanPlanetData(trash: 3, recycle: 5)), refReward: .constant(3), isEditing: false, fontStyle: .font1)
            .previewDevice("iPhone 14")
        
        CleanPlanetViewFull(value: .constant(CleanPlanetData(trash: 3, recycle: 5)), refReward: .constant(3), isEditing: true, fontStyle: .font1)
            .previewDevice("iPad (10th generation)")
    }
}

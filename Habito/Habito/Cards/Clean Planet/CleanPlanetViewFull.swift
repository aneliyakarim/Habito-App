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
        HStack {
            VStack {
                Text(isEditing ? "How many litter did you put in a bin?" : "Put into Bin")
                    .foregroundColor(.darkBrown)
                    .font(fontStyle.uiFont(15))
                    .frame(maxWidth: .infinity, alignment: isEditing ? .leading : .center)
                HStack {
                    HStack {
                        VStack {
                            Image(systemName: "trash")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .font(Font.system(size: 60, weight: .ultraLight))
                            
                            Text("Waste")
                                .lineLimit(1)
                                .fixedSize(horizontal: true, vertical: false)
                        }
                        .padding()
//                        .frame(minWidth: 60.0)
                        
                        VStack {
                            Text("\(Int(value.trash))")
                                .modifier(FontStyle(size: 50))
                            
                            if isEditing {
                                Stepper("Trash to Bin", value: $value.trash, in: 0...99, step: 1)
                                    .labelsHidden()
                            }
                        }
                    }
                    .frame(minHeight: 100, maxHeight: 200)
                    .padding()
                    
                    Spacer()
                        .frame(width: 80)
                    
                    HStack {
                        VStack{
                            Image("Universal Recycling Symbol (U+2672)")
                                .resizable()
                                .frame(width: 75.0, height: 75.0)
                            Text("Recycled")
                        }
                    VStack {
                        
                        Text("\(Int(value.recycle))")
                            .modifier(FontStyle(size: 50))
                        
                        if isEditing {
                            Stepper("Trash to Bin", value: $value.recycle, in: 0...99, step: 1)
                                .labelsHidden()
                        }
                        
                    }
                    .frame(minHeight: 100, maxHeight: 200)
                    .padding()
                }
                    
                }
                RewardView(refReward: $refReward)
            }
        }
        .frame(minHeight: 100, maxHeight: 300)
        .padding()
    }
}

struct CleanPlanetViewFull_Previews: PreviewProvider {
    static var previews: some View {
        CleanPlanetViewFull(value: .constant(CleanPlanetData(trash: 0, recycle: 5)), refReward: .constant(3), isEditing: true, fontStyle: .font1)
    }
}

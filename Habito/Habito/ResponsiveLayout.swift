//
//  ResponsiveLayout.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 13/06/23.
//

import SwiftUI

struct ResponsiveLayout: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.sizeCategory) var sizeCategory: ContentSizeCategory
    
    var body: some View {
        if horizontalSizeClass == .regular {
            HStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(.green)
                    .frame(width: .infinity, height: 300)
                    .padding(20)
                
                HStack {
                    Text("SwiftUI gives us five built-in shapes that are commonly used: rectangle, rounded rectangle, circle, ellipse, and capsule. The last three in particular are subtly different in how they behave based on what sizes you provide, but we can demonstrate all the options with a single example:")
                }
                .padding(20)
            }
        }
        else {
            VStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(.green)
                    .frame(width: .infinity, height: 300)
                    .padding(20)
                
                HStack {
                    Text("SwiftUI gives us five built-in shapes that are commonly used: rectangle, rounded rectangle, circle, ellipse, and capsule. The last three in particular are subtly different in how they behave based on what sizes you provide, but we can demonstrate all the options with a single example:")
                }
                .padding(20)
            }
        }
    }
}

struct ResponsiveLayout_Previews: PreviewProvider {
    static var previews: some View {
        ResponsiveLayout()
    }
}

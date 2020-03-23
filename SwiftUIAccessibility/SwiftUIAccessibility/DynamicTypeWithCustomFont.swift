//
//  DynamicTypeWithCustomFont.swift
//  SwiftUIAccessibility
//
//  Created by techfun on 2020/03/23.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct DynamicTypeWithCustomFont: View {
    var body: some View {
        List{
            Text("Hello World")
            Text("Hello World")
            .scaledFont(name: "Georgia", size: 12)
        }
    }
}

struct DynamicTypeWithCustomFont_Previews: PreviewProvider {
    static var previews: some View {
        DynamicTypeWithCustomFont()
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(name, size: scaledSize))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
    func scaledFont(name: String, size: CGFloat) -> some View {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}

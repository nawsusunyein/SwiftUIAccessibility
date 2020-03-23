//
//  ReduceMotionAccessibilityView.swift
//  SwiftUIAccessibility
//
//  Created by techfun on 2020/03/23.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ReduceMotionAccessibilityView: View {
    
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    
    @State var scale : CGFloat = 1
    
    var body: some View {
        VStack{
            Spacer()
            Circle()
            .frame(width:200,height:200)
            .scaleEffect(scale)
                .animation(reduceMotion ? nil : .spring(response:1,dampingFraction:0.1))
            
            Spacer()
            Button("Increase Scale"){
                self.scale *= 0.5
            }
            Spacer()
        }
        
            
    }
}

struct ReduceMotionAccessibilityView_Previews: PreviewProvider {
    static var previews: some View {
        ReduceMotionAccessibilityView()
    }
}

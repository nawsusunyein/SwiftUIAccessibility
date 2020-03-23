//
//  ContentView.swift
//  SwiftUIAccessibility
//
//  Created by techfun on 2020/03/23.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let componentsList = ["Dynamic types with custom fonts","Reduce Motions"]
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination:DynamicTypeWithCustomFont()){
                    Text(componentsList[0])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                }
                NavigationLink(destination:ReduceMotionAccessibilityView()){
                    Text(componentsList[1])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

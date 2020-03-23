//
//  DetectDarkModeView.swift
//  SwiftUIAccessibility
//
//  Created by techfun on 2020/03/23.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct DetectDarkModeView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text(colorScheme == .dark ? "Text in Dark Mode" : "Text in Light Mode")
    }
}

struct DetectDarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        DetectDarkModeView()
    }
}

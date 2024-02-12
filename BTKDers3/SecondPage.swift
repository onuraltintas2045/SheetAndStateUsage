//
//  SwiftUIView.swift
//  BTKDers3
//
//  Created by Onur Altintas on 30.01.2024.
//

import SwiftUI

struct SecondPage: View {
    var name: String
    
    var body: some View {
        Text(name)
    }
}

#Preview {
    SecondPage(name : "")
}

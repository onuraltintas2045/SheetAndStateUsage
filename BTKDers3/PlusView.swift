//
//  PlusView.swift
//  BTKDers3
//
//  Created by Onur Altintas on 6.02.2024.
//

import SwiftUI

struct PlusView: View {
    @Binding var num : Int
    var body: some View {
        Button(action: {
            num += 1
        }, label: {
            Text("+")
                .font(.largeTitle.bold())
                .foregroundStyle(Color.black)
                .frame(width: 50, height: 50)
                .padding()
                .background(Color.red.opacity(0.5))
                .padding()
        })
    }
}



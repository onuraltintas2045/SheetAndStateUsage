//
//  ContentView.swift
//  BTKDers3
//
//  Created by Onur Altintas on 29.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var num = 0
    var body: some View {
        VStack {
            Text("Number is = \(num)")
                .font(.largeTitle.bold())
                .foregroundStyle(Color.brown)
                .padding()
                .background(Color.blue.opacity(0.2))
                .padding()
            HStack {
                PlusView(num: $num)
                Button(action: {
                    if num > 0 {
                        num -= 1
                    }
                }, label: {
                    Text("-")
                        .font(.largeTitle.bold())
                        .foregroundStyle(Color.black)
                        .frame(width: 50, height: 50)
                        .padding()
                        .background(Color.red.opacity(0.5))
                })
            }
            
            
            Button(action: {
                num = 0
            }, label: {
                Text("Reset")
                    .font(.largeTitle.bold())
                    .foregroundStyle(Color.blue)
                    .padding()
                    .background(Color.green.opacity(0.5))
                    .padding()
            })
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 2)
                .foregroundStyle(Color.black.opacity(0.5))
                .shadow(radius: 5)
            
            StateWithTextField()
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

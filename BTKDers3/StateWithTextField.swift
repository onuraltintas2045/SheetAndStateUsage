//
//  StateWithTextField.swift
//  BTKDers3
//
//  Created by Onur Altintas on 29.01.2024.
//

import SwiftUI

struct StateWithTextField: View {
    @State var name = ""
    @State var countCheck = false
    var body: some View {
        Text(name)
            .font(.largeTitle.bold())
            .foregroundStyle(Color.blue)
            .frame(height: 50)
            .scaledToFit()
            .minimumScaleFactor(0.01)
            .padding()
            .background(Color.red.opacity(0.4))
        TextField("Enter Name", text: $name)
            .font(.largeTitle.bold())
            .foregroundStyle(Color.black)
            .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
            .padding()
            .background(Color.gray.opacity(0.2))
            .multilineTextAlignment(.center)
            .underline()
        
        Button(action: {
            if name.count >= 3 {
                countCheck.toggle()
            }
        }, label: {
            Text("Next Page")
                .font(.largeTitle.bold())
                .padding()
                .frame(width: UIScreen.main.bounds.width)
                .background(Color.black.opacity(0.2))
                .padding()
                
        })
        .sheet(isPresented: $countCheck, content: {
            SecondPage(name: name)
        })
    }
}

#Preview {
    StateWithTextField()
}

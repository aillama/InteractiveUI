//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Ananya Gogula on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    //this stores the input of the text field later in the code
    @State private var name: String = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            
            //this text field!
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.purple, width: 1)
            
            Button("Submit Name!") {
                textTitle = "Welcome \(name)!"
            }
            //button formatting
            .padding()
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

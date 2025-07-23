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
    
    var body: some View {
        VStack {
            Text("What is your name?")
                .font(.title)
            
            //this text field!
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.purple, width: 1)
            
            Button("Submit Name!") {
                
            }
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

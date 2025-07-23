//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Ananya Gogula on 7/23/25.
//
//
import SwiftUI

struct ContentView: View {
    
    //this stores the input of the text field later in the code
    @State private var name: String = ""
    @State private var age: Int?
    @State private var textTitle = "What is your name?"
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            
            //this text field!
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.purple, width: 1)
            //the .number ensures that the input is a number?? IDK if it works yet
            TextField("Type your age here...", value: $age, format: .number)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.purple, width: 1)
            
            Button("Submit Name!") {
                textTitle = "Welcome \(name)!"
                showAlert = true
            }
            //button formatting
            .padding()
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            .alert("We got your submission!", isPresented: $showAlert) {
                // DO YOU EVEN NEED THIS BRU Button("OK", role: .cancel) { }
                    }

            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


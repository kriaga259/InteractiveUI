//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    
    @State private var mood = ""
    @State private var presentAlert = false // binding val
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.pink, width: 1)
            Button("submit name") {
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            Spacer()
            
            Text("How are you feeling today?")
                .font(.title)
            TextField("Type your mood here...", text: $mood)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.pink, width: 1)
//            Text(presentAlert ? "Presenting": "Dismissed")
            //what does the above line do??
                
            
            Button("submit mood") {
                presentAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            

        }
        .alert("moody .-.", isPresented: $presentAlert, actions: {})
        .padding()
    }
}

#Preview {
    ContentView()
}

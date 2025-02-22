//
//  ContentView.swift
//  Elvis
//
//  Created by John Kearon on 2/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
                
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
//                .imageScale(.large)
//                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Spacer()
            
            Text(message)
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
            
            HStack {
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                }
//                Spacer()
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb"
                }
                
            }

//    set the styles of the buttons since they are interactive
            .buttonStyle(.borderedProminent)
//            .font(.title2)
            .tint(.purple)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  laboratory
//
//  Created by 山本学 on 2021/04/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            MapView()
                .frame(height: 300)
            
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text("SwiftUI laboratory")
              
            HStack {
                Text("I want to be a iOS developper")
                Spacer()
                Text("iot AR VR")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("About me")
                .font(.title2)
            Text("I am 23 years old")
        }
        .padding()
        
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

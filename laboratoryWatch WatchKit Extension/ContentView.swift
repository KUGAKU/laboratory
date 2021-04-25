//
//  ContentView.swift
//  laboratoryWatch WatchKit Extension
//
//  Created by 山本学 on 2021/04/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Text("Hello, World!")
                .padding()
            Button(
                action: {
                  start()
                },
                label: {
                    Text("Start")
                }
            )
        }
    }
}

private func start() {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

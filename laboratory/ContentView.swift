//
//  ContentView.swift
//  laboratory
//
//  Created by 山本学 on 2021/04/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SwiftUI laboratory")
                .font(.title)
            HStack {
                Text("I want to be a iOS developper")
                    .font(.subheadline)
                Spacer()
                Text("iot AR VR")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

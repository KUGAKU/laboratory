//
//  CircleImage.swift
//  laboratory
//
//  Created by 山本学 on 2021/04/18.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("me")
            .resizable()
            .frame(width: 180, height: 180, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}

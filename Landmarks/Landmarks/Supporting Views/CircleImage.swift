//
//  CircleImage.swift
//  Landmarks
//
//  Created by Abdullah Alhasan on 6/27/20.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable().frame(width: 260, height: 260)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("kuwait_towers"))
    }
}

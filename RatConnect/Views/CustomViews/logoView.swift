//
//  logoView.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 12/06/2023.
//

import SwiftUI

struct logoView: View {
        var frameWidth: CGFloat
        var body: some View {
            Image("map-logo")
                .resizable()
                .scaledToFit()
                .frame(width: frameWidth)
        }
    }



struct logoView_Previews: PreviewProvider {
    static var previews: some View {
        logoView(frameWidth: 250)
    }
}

//
//  AvatarView.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 12/06/2023.
//

import SwiftUI

struct AvatarView: View {
    var size : CGFloat
    
    var body: some View {
        NavigationLink {
            
        } label: {
            Image("default-avatar")
                .resizable()
                .scaledToFill()
                .frame(width: size, height: size)
                .clipShape(Circle())
        }
       
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(size: 90)
    }
}

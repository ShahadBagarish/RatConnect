//
//  TopBar.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 12/06/2023.
//

import SwiftUI

struct TopBar: View {
    @State private var searchText = ""
    @State private var isEditing = false
    var body: some View {
        HStack{
            TextField("Search ...", text: $searchText)
                           .padding(7)
                           .padding(.horizontal, 25)
                           .background(Color(.systemGray6))
                           .cornerRadius(8)
                           .onTapGesture {
                               self.isEditing = true
                           }
            AvatarView(size: 35)
                .padding(.horizontal)
            Spacer()
            
        }
//        .padding()
        .padding(.horizontal)
        .padding(.vertical, 8)
       
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}

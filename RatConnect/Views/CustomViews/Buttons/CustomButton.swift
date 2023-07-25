//
//  CustomButton.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 12/06/2023.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Test Button")
    }
}

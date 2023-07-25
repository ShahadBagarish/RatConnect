//
//  ImageSlider.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 13/06/2023.
//

import SwiftUI

struct ImageSlider: View {
    // 1
    private let images = ["default-PlaceHolder2", "default-PlaceHolder", "default-PlaceHolder"]
    
    var body: some View {
        // 2
        TabView {
            ForEach(images, id: \.self) { item in
                
                ZStack{
                    Image(item)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 240)
                    .frame(maxWidth: .infinity)
                    Group {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Button {
                                } label: {
                                    HStack{
                                        Image(systemName: "star.fill")
                                        Text("3.5")
                                    }
                                    .font(.caption)
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .background(Color.brandPrimary)
                                    .cornerRadius(12)
                                }
                            }
                        }
                    }.padding()
                }.frame(height: 240)
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        // 4
        ImageSlider()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}

//
//  AllGymView.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 13/06/2023.
//

import SwiftUI

struct AllGymView: View {
    var body: some View {
        NavigationView{
            VStack{
                TopBar()
                HStack{
                    FilterButton(background: .brandPrimary, foreground: .white,text: "All")
                    FilterButton(text: "Near")
                    FilterButton(text: "Facilities")
                    FilterButton(text: "Partners")
                }
                .padding()
                ScrollView(.vertical) {
                    VStack() {
                        ForEach(0..<5) {_ in
                            NavigationLink {
                                SingleGymPreview()
                            } label: {
                                CardGymView()
                            }
                            
                            
                        }
                    }
                }
            }
        }.navigationBarBackButtonHidden(false)
    }
}

struct AllGymView_Previews: PreviewProvider {
    static var previews: some View {
        AllGymView()
    }
}

struct FilterButton: View {
    @State var background: Color = .white
    @State var foreground: Color = .black
    @State var text: String
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
            Button {
                print("\(text)")
            } label: {
                Text(text)
                    .foregroundColor(foreground)
            }
        }
        .frame(width: 80, height: 35)
        .cornerRadius(8)
        .shadow(radius: 3, x: 0, y: 3)
        .padding(.top, 15)
        
    }
}

struct CardGymView: View {
    var body: some View {
        VStack{
            ImageSlider()
                .frame(height: 240)
                .frame(maxWidth: .infinity)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            VStack(alignment: .leading,spacing: 8){
                HStack{
                    Text("Fitness time")
                        .font(.title2)
                        .bold()
                    Spacer()
                    HStack{
                        Image(systemName: "location.fill")
                        Text("2 kms")
                    }.foregroundColor(.brandPrimary)
                }
                Text("Address: ").bold() + Text("Dammam Branch Rd, Al Yarmuk, Riyadh 11564")
                Text("Hours: ").bold() + Text("Open ⋅ Closes 11 PM")
                Text("Contact: ").bold() + Text("9200 03131").underline()
            }.padding()
        }
        .foregroundColor(.black)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 0.5)
                .shadow(radius: 10, x: 0, y: 10)
        )
        .padding()
    }
}

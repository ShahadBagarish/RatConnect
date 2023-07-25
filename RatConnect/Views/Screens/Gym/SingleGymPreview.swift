//
//  SingleGymPreview.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 16/07/2023.
//

import SwiftUI

struct SingleGymPreview: View {
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    Image("default-PlaceHolder2")
                }
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Image(systemName: "star.fill")
                        Text("3.4 (8)")
                        Spacer()
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.brandPrimary)
                        Text("2 kms")
                            .foregroundColor(.brandPrimary)
                    }
                    
                    Text("B-it fitness")
                        .font(.title)
                        .bold()
                        .padding(.top)
                    
                    Divider()
                    VStack{
                        Text("Facilities Available")
                            .font(.title3)
                            .padding(.top)
                            .bold()
                        
                        HStack{
                            Image(systemName: "figure.pool.swim")
                                .frame(width: 18)
                                .padding()
                                .background(Color.customGray)
                                .cornerRadius(10)
                            Text("Swimming Pool")
                        }
                        HStack{
                            Image(systemName: "figure.socialdance")
                                .frame(width: 18)
                                .padding()
                                .background(Color.customGray)
                                .cornerRadius(10)
                            Text("Zumba Classes")
                        }
                        HStack{
                            Image(systemName: "figure.indoor.cycle")
                                .frame(width: 18)
                                .padding()
                                .background(Color.customGray)
                                .cornerRadius(10)
                            Text("Cycling hall       ")
                        }
                    }
                    
                    Divider()
                    VStack (alignment: .leading){
                        HStack{
                            Image("avatar")
                                .resizable()
                                .frame(width: 52,height: 52)
                                .clipShape(Circle())
                            VStack (alignment: .leading){
                                Text("Sami")
                                Text("2 years subscription ").foregroundColor(.brandPrimary)
                            }
                            Spacer()
                            Button {} label: {
                                Image(systemName: "message.fill")
                                    .foregroundColor(.brandPrimary)
                                    .padding(.horizontal)
                            }
                        }
                        Text("Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor incididunt ut  labore et dolore magna aliqua. Ut enim ad minim veniam.")
                        
                        NavigationLink {
                            
                        } label: {
                            Text("Read more")
                                .foregroundColor(.brandPrimary)
                                .padding(.vertical)
                                .underline()
                        }

                    }
                    Divider()
                    
                    VStack(alignment: .leading){
                        Text("Location")
                            .font(.title3)
                            .padding(.top)
                            .bold()
                        Image("Rectangle19")
                            .frame(maxWidth: .infinity)
                        Text("3246 Hasan Al Bariqi, 6532،Riyadh")
                    }
                    Divider()
                    CustomButton(title: "Add To Favourite ")
                        .padding()

                    
                   
                    
                }.padding(.horizontal, 8)
                
                Spacer()
            }
        }
    }
}

struct SingleGymPreview_Previews: PreviewProvider {
    static var previews: some View {
        SingleGymPreview()
    }
}

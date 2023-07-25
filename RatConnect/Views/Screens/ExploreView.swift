//
//  ExploreView.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 12/06/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            TopBar()
                .padding(.top)
                .padding(.bottom, -9)
            NavigationStack {
                ScrollView{
                    VStack (alignment: .leading,spacing: 25){
                        Text("Today’s Missions ")
                            .font(.title2)
                            .fontWeight(.semibold)
                        CardView(icon: "waveform.path.ecg", reelName: "Today’s Workout", activityName: "Leg Day", hyperLink: "Show workout")
                        CardView(icon: "dumbbell", reelName: "Your Gym", activityName: "Fitness time AL Moanasiah Ladies. ", hyperLink: "Open Profile")
                        CardView(icon: "person.2", reelName: "Nearby Partner", activityName: "@Maryam_202", hyperLink: "Show Gym Location")
                        Text("Today’s Reels ")
                            .font(.title2)
                            .fontWeight(.semibold)
                        ScrollView(.horizontal) {
                            HStack() {
                                ForEach(0..<5) {_ in
                                    Image("default-PlaceHolder")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

struct CardView: View {
    @State var icon: String
    @State var reelName: String
    @State var activityName: String
    @State var hyperLink: String
    
    var body: some View {
        HStack{
            Image(systemName:"square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 113.64, height: 100)
                .foregroundColor(Color(.gray))
            Spacer()
            VStack (alignment: .leading,spacing: 13){
                HStack{
                    Image(systemName: icon)
                    Text(reelName)
                }
                .foregroundColor(Color.gray)
                Text(activityName)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                NavigationLink(destination: Text("Default Page")) {
                    Text(hyperLink)
                        .font(.callout)
                        .foregroundColor(.brandPrimary)
//                        .underline()
                }
            }
        }
        .padding()
        .padding(.horizontal)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 1)
        )
    }
}

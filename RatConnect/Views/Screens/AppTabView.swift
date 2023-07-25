//
//  AppTabView.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 12/06/2023.
//

import SwiftUI

struct AppTabView: View {
    @State private var searchText = ""
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "house")
                }
            AllGymView()
                .tabItem {
                    Label("Gym", systemImage: "dumbbell.fill")
                }
            FirstViewWorkout()
                .tabItem {
                    Label("Workout", systemImage: "waveform.path.ecg")
                }
            Text("Community")
                .tabItem {
                    Label("Profile", systemImage: "person.2.fill")
                }
        }
        
        .accentColor(.brandPrimary)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}

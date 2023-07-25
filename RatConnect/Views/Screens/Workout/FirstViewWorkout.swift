//
//  FirstViewWorkout.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 14/06/2023.
//

import SwiftUI

struct FirstViewWorkout: View {
    @State private var date = Date.now
    
    var body: some View {
        VStack{
            TopBar()
            CustomWeekHeader()
            ScrollView(.vertical) {
                ForEach(0..<4) { i in
                    WorkoutCell(index: i+1)
                }
                CustomButton(title: "Share Plan")
                    .padding()
                NavigationLink {
                    
                } label: {
                    Text("Customize plan")
                        .font(.body)
                        .foregroundColor(.brandPrimary)
                }

            }
           
        }
    }
}

struct FirstViewWorkout_Previews: PreviewProvider {
    static var previews: some View {
        FirstViewWorkout()
    }
}

struct WorkoutCell: View {
    var index = 1
    var body: some View {
        VStack {
            HStack{
                Image("default-PlaceHolder2")
                    .resizable()
                    .frame(width: 113,height: 100)
                    .cornerRadius(12)
                VStack(alignment: .leading, spacing: 12 ){
                    Text("Day").bold() + Text(" \(index)")
                        .bold()
                    Text("Leg Day")
                        .foregroundColor(.brandPrimary)
                        .bold().font(.callout)
                }.padding(.horizontal)
                Spacer()
                Image(systemName: "arrow.right")
            }.padding(.horizontal).padding(.top)
        }
    }
}

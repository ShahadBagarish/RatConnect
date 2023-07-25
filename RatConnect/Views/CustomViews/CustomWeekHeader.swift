//
//  CustomWeekHeader.swift
//  RatConnect
//
//  Created by Shahad Bagarish on 14/06/2023.
//

import SwiftUI

struct CustomWeekHeader: View {
    @StateObject var weekStore = WeekStore()
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    @State private var currentDate = Date.now.formatted()
    @State var Clicked = false
    var body: some View {
        ZStack {
            ForEach(weekStore.allWeeks) { week in
                VStack{
                    HStack {
                        ForEach(0..<7) { index in
                            Button {
                                Clicked.toggle()
                            } label: {
                                VStack(spacing: 20) {
                                    Text(weekStore.dateToString(date: week.date[index], format: "EEE"))
                                        .font(.system(size:14))
                                        .fontWeight(.semibold)
                                        .frame(maxWidth:.infinity)
                                    
                                    Text(weekStore.dateToString(date: week.date[index], format: "d"))
                                        .font(.system(size:14))
                                        .frame(maxWidth:.infinity)
                                }
                                .padding(.vertical)
                                .foregroundColor(.black)
                                .background(
                                    Clicked ? Color.brandPrimary.opacity(0.7) :
                                                Color.white)
                                .cornerRadius(12)
                                
                                
                                .onTapGesture {
                                    // Updating Current Day
                                    weekStore.currentDate = week.date[index]
                                }
                            }

                        }
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .background(
                        Rectangle()
                            .fill(.white)
                    )
                }
                .offset(x: myXOffset(week.id), y: 0)
                .zIndex(1.0 - abs(distance(week.id)) * 0.1)
                .padding(.horizontal, 20)
            }
        }
        .frame(alignment : .top)
        .padding(.top,50)
        .gesture(
            DragGesture()
                .onChanged { value in
                    draggingItem = snappedItem + value.translation.width / 400
                }
                .onEnded { value in
                    withAnimation {
                        if value.predictedEndTranslation.width > 0 {
                            draggingItem = snappedItem + 1
                        } else {
                            draggingItem = snappedItem - 1
                        }
                        snappedItem = draggingItem
                        
                        weekStore.update(index: Int(snappedItem))
                    }
                }
        )
        .onAppear(){
//            print(self.$currentDate.index(str.startIndex, offsetBy: 0))
        }
    }
    
    func distance(_ item: Int) -> Double {
        return (draggingItem - Double(item)).remainder(dividingBy: Double(weekStore.allWeeks.count))
    }
    
    func myXOffset(_ item: Int) -> Double {
        let angle = Double.pi * 2 / Double(weekStore.allWeeks.count) * distance(item)
        return sin(angle) * 200
    }
}
struct CustomWeekHeader_Previews: PreviewProvider {
    static var previews: some View {
        CustomWeekHeader()
    }
}

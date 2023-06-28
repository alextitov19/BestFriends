//
//  FriendValutTrackMoods.swift
//  BestFriends
//
//  Created by Social Tech on 5/18/22.
//


import Foundation
import SwiftUI


struct FriendVaultTrackMoods: View {
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    @State private var selectedTimeRange: TimeRange = .lastWeek // Initial selection

    
    @State private var moodLogs: [MoodLog] = []
    
    var body: some View {
        ZStack {

            
            ColorManager .purple7
                 .ignoresSafeArea()
                 .onAppear{ loadData() }
                 .scaledToFill()

                     
            AdPlayerView(name: "sky2")
                          .ignoresSafeArea()
                           .blendMode(.screen)
            
            VStack {
                Text("my daily 'Vibes'")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(ColorManager .purple4)
                
                Spacer()
                    .frame(height: 30)
                
//                HStack {
                    timeRangeButton("Last Week", timeRange: .lastWeek)
//                    timeRangeButton("Last Month", timeRange: .lastMonth)
//                    timeRangeButton("Last 3 Months", timeRange: .lastThreeMonths)
//                }
               .padding(.horizontal)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(filteredMoodLogs, id: \.id) { moodLog in
                        ZStack {
                            if moodLog.mood < 4 {
                                Color(.systemCyan)
//                                ColorManager .
                                    .cornerRadius(25)
                                    .opacity(0.50)
                            } else if moodLog.mood == 4 {
//                                Color(.systemGreen)
                                ColorManager .pmbc_green
                                    .cornerRadius(25)
                            } else if moodLog.mood == 5 {
//                                Color(.orange)
                                ColorManager .orange5
                                    .cornerRadius(25)
                            } else {
                               Color(.systemYellow)
//                                ColorManager .orange3
                                    .cornerRadius(25)
                                    .opacity(0.50)
                            }
                            
                            VStack{
                                //MARK: Date and time
                                HStack {
                                    Text(getDateString(date: Date(timeIntervalSince1970: TimeInterval(moodLog.createdOn))))
                                    
                                    Spacer()
                                }
                               .padding()
                                
                                //MARK: Mood Log sumary
                                HStack {
                                    Text(moodLog.summary)
                                    
                                    Spacer()
                                }
                                .padding(.horizontal)
                                
                                CustomDivider(color: ColorManager.grey3)
                                    .padding(.horizontal)
                                
                                //MARK: Friends you shared with
                                HStack {
                                    ForEach(friends, id: \.id) { friend in
                                        if moodLog.sharedWith.contains(friend.id) {
                                            ZStack {
                                                ColorManager.purple3
                                                    .frame(width: 50, height: 50)
                                                    .cornerRadius(25)
                                                
                                                Text("\(String(friend.firstName.first!)) \(String(friend.lastName.first!))")
                                                    .foregroundColor(.white)
                                                    .fontWeight(.bold)
                                            }
                                        }
                                    }
                                    
                                    Spacer()
                                }
                                .padding()
                            }
                        }
                        .frame(width: 320, height: 80)
                        .padding(.vertical)
                    }
                }
            }
        }
    }
    
    private func loadData() {
        for id in atmosphere.moodLogs ?? [] {
            RestApi.instance.getMoodLog(id: id).then({ ml in
                self.moodLogs.append(ml)
                print("Added mood log: ", ml.summary)
                self.moodLogs = self.moodLogs.sorted(by: { $0.createdOn > $1.createdOn })
            })
        }
    }
    
    private func getDateString(date: Date) -> String {
        let formatter3 = DateFormatter()
        formatter3.dateFormat = "HH:mm E, d MMM y"
        return formatter3.string(from: date)
    }
    
    private var filteredMoodLogs: [MoodLog] {
        let currentDate = Date()
        let calendar = Calendar.current
        
        switch selectedTimeRange {
        case .lastWeek:
            let startDate = calendar.date(byAdding: .weekOfYear, value: -1, to: currentDate)!
            let startDateTimestamp = Int64(startDate.timeIntervalSince1970)
            return moodLogs.filter { $0.createdOn >= startDateTimestamp }
        case .lastMonth:
            let startDate = calendar.date(byAdding: .month, value: -1, to: currentDate)!
            let startDateTimestamp = Int64(startDate.timeIntervalSince1970)
            return moodLogs.filter { $0.createdOn >= startDateTimestamp }
        case .lastThreeMonths:
            let startDate = calendar.date(byAdding: .month, value: -3, to: currentDate)!
            let startDateTimestamp = Int64(startDate.timeIntervalSince1970)
            return moodLogs.filter { $0.createdOn >= startDateTimestamp }
        }
    }


    
    private func timeRangeButton(_ title: String, timeRange: TimeRange) -> some View {
        Button(action: {
            selectedTimeRange = timeRange
        }) {
            Text(title)
                .foregroundColor(selectedTimeRange == timeRange ? .white : .black)
                .padding()
                .background(selectedTimeRange == timeRange ? Color.blue : Color.white)
                .cornerRadius(10)
        }
    }

    
    enum TimeRange {
        case lastWeek
        case lastMonth
        case lastThreeMonths
    }
}






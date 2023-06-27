// Created by Zhengxu(Andy) Wang on Jun 27th


import Foundation
import SwiftUI

struct FriendVaultTrackMoods: View {
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    @State private var calendar = Calendar.current
    @State private var currentMonth = DateComponents(year: Calendar.current.component(.year, from: Date()), month: Calendar.current.component(.month, from: Date()))
    @State private var moodLogs: [MoodLog] = []
    
    var body: some View {
        ZStack {
            ColorManager.purple7
                .ignoresSafeArea()
                .onAppear { loadData() }
                .scaledToFill()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("my daily 'Vibes'")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(ColorManager.purple4)
                
                Spacer().frame(height: 30)
                
                DatePicker(
                    "",
                    selection: Binding(
                        get: {
                            calendar.date(from: currentMonth)!
                        },
                        set: { date in
                            let components = calendar.dateComponents([.year, .month], from: date)
                            currentMonth.year = components.year
                            currentMonth.month = components.month
                        }
                    ),
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding(.horizontal)
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
    
    private func getMoodEmoji(for mood: Int) -> String {
        switch mood {
        case 1:
            return "😢"
        case 2:
            return "😞"
        case 3:
            return "😐"
        case 4:
            return "😊"
        case 5:
            return "😄"
        default:
            return ""
        }
    }
    
    private func daysInMonth() -> [Int] {
        guard let startDate = calendar.date(from: currentMonth),
              let endDate = calendar.date(byAdding: DateComponents(month: 1, day: -1), to: startDate) else {
            return []
        }

        let range = calendar.range(of: .day, in: .month, for: startDate)!
        let days = range.lowerBound..<range.upperBound

        return days.map { calendar.component(.day, from: calendar.date(byAdding: DateComponents(day: $0 - 1), to: startDate)!) }
    }
    
    private var filteredMoodLogs: [MoodLog] {
        let startDate = calendar.date(from: $currentMonth.wrappedValue)!
        let endDate = calendar.date(byAdding: DateComponents(month: 1, day: -1), to: startDate)!
        
        return moodLogs.filter { moodLog in
            let moodLogDate = Date(timeIntervalSince1970: TimeInterval(moodLog.createdOn))
            return calendar.isDate(moodLogDate, inSameDayAs: startDate)
        }
    }
}

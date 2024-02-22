import SwiftUI

struct FriendVaultTrackMoods: View {
    private let calendar: Calendar
    private let monthFormatter: DateFormatter
    private let dayFormatter: DateFormatter
    private let weekDayFormatter: DateFormatter
    private let fullFormatter: DateFormatter
    private let findMoodFormatter: DateFormatter
    
    @State private var selectedDate = Self.now
    private static var now = Date() // Cache now
    
    
    // Mood data for demonstration
    private var moodData: [String : Mood] {
        [
            "2023-07-01" : .happy,
            "2023-07-02" : .sad,
            "2023-07-03" : .angry,
            "2023-07-04" : .happy,
            "2023-07-05" : .sad,
            "2023-07-06" : .angry,
            "2023-07-07" : .happy,
            "2023-07-08" : .sad,
            "2023-07-09" : .angry,
        ]
    }
    
    enum Mood {
        case happy, sad, angry
    }
    
    
    init(calendar: Calendar) {
        self.calendar = calendar
        self.monthFormatter = DateFormatter(dateFormat: "MMMM", calendar: calendar)
        self.dayFormatter = DateFormatter(dateFormat: "d", calendar: calendar)
        self.weekDayFormatter = DateFormatter(dateFormat: "EEEEE", calendar: calendar)
        self.fullFormatter = DateFormatter(dateFormat: "MMMM dd, yyyy", calendar: calendar)
        self.findMoodFormatter = DateFormatter(dateFormat: "yyyy-MM-dd", calendar: calendar)
    }
    
    var body: some View {
        VStack {
            Text("Selected date: \(fullFormatter.string(from: selectedDate))")
                .bold()
                .foregroundColor(.red)
            CalendarView(
                calendar: calendar,
                date: $selectedDate,
                content: { date in
                    let dateString = findMoodFormatter.string(from: date)
                    let mood = moodData[dateString]
                    Button(action: { selectedDate = date }) {
                        Text("00")
                            .padding(8)
                            .foregroundColor(.clear)
                            .background(
//                                calendar.isDate(date, inSameDayAs: selectedDate) ? Color.red
//                                : calendar.isDateInToday(date) ? .green
//                                : .blue
                                getMoodColor(for: mood)
                            )
                            .cornerRadius(8)
                            .accessibilityHidden(true)
                            .overlay(
                                Text(dayFormatter.string(from: date))
                                    .foregroundColor(.white)
                            )
                    }
                },
                trailing: { date in
                    Text(dayFormatter.string(from: date))
                        .foregroundColor(.secondary)
                },
                header: { date in
                    Text(weekDayFormatter.string(from: date))
                },
                title: { date in
                    HStack {
                        Text(monthFormatter.string(from: date))
                            .font(.headline)
                            .padding()
                        Spacer()
                        Button {
                            withAnimation {
                                guard let newDate = calendar.date(
                                    byAdding: .month,
                                    value: -1,
                                    to: selectedDate
                                ) else {
                                    return
                                }
                                
                                selectedDate = newDate
                            }
                        } label: {
                            Label(
                                title: { Text("Previous") },
                                icon: { Image(systemName: "chevron.left") }
                            )
                            .labelStyle(IconOnlyLabelStyle())
                            .padding(.horizontal)
                            .frame(maxHeight: .infinity)
                        }
                        Button {
                            withAnimation {
                                guard let newDate = calendar.date(
                                    byAdding: .month,
                                    value: 1,
                                    to: selectedDate
                                ) else {
                                    return
                                }
                                
                                selectedDate = newDate
                            }
                        } label: {
                            Label(
                                title: { Text("Next") },
                                icon: { Image(systemName: "chevron.right") }
                            )
                            .labelStyle(IconOnlyLabelStyle())
                            .padding(.horizontal)
                            .frame(maxHeight: .infinity)
                        }
                    }
                    .padding(.bottom, 6)
                }
            )
            .equatable()
        }
        .padding()
    }
    
    private func getMoodColor(for mood: Mood?) -> Color {
        guard let mood = mood else {
            return .blue // Default color when mood data is not available
        }
        
        switch mood {
        case .happy:
            return .green
        case .sad:
            return .purple
        case .angry:
            return .red
        }
    }

}

// MARK: - Component

public struct CalendarView<Day: View, Header: View, Title: View, Trailing: View>: View {
    // Injected dependencies
    private var calendar: Calendar
    @Binding private var date: Date
    private let content: (Date) -> Day
    private let trailing: (Date) -> Trailing
    private let header: (Date) -> Header
    private let title: (Date) -> Title
    
    // Constants
    private let daysInWeek = 7
    
    public init(
        calendar: Calendar,
        date: Binding<Date>,
        @ViewBuilder content: @escaping (Date) -> Day,
        @ViewBuilder trailing: @escaping (Date) -> Trailing,
        @ViewBuilder header: @escaping (Date) -> Header,
        @ViewBuilder title: @escaping (Date) -> Title
    ) {
        self.calendar = calendar
        self._date = date
        self.content = content
        self.trailing = trailing
        self.header = header
        self.title = title
    }
    
    public var body: some View {
        let month = date.startOfMonth(using: calendar)
        let days = makeDays()
        
        return LazyVGrid(columns: Array(repeating: GridItem(), count: daysInWeek)) {
            Section(header: title(month)) {
                ForEach(days.prefix(daysInWeek), id: \.self, content: header)
                ForEach(days, id: \.self) { date in
                    if calendar.isDate(date, equalTo: month, toGranularity: .month) {
                        content(date)
                    } else {
                        trailing(date)
                    }
                }
            }
        }
    }
}

// MARK: - Conformances

extension CalendarView: Equatable {
    public static func == (lhs: CalendarView<Day, Header, Title, Trailing>, rhs: CalendarView<Day, Header, Title, Trailing>) -> Bool {
        lhs.calendar == rhs.calendar && lhs.date == rhs.date
    }
}

// MARK: - Helpers

private extension CalendarView {
    func makeDays() -> [Date] {
        guard let monthInterval = calendar.dateInterval(of: .month, for: date),
              let monthFirstWeek = calendar.dateInterval(of: .weekOfMonth, for: monthInterval.start),
              let monthLastWeek = calendar.dateInterval(of: .weekOfMonth, for: monthInterval.end - 1)
        else {
            return []
        }
        
        let dateInterval = DateInterval(start: monthFirstWeek.start, end: monthLastWeek.end)
        return calendar.generateDays(for: dateInterval)
    }
}

private extension Calendar {
    func generateDates(
        for dateInterval: DateInterval,
        matching components: DateComponents
    ) -> [Date] {
        var dates = [dateInterval.start]
        
        enumerateDates(
            startingAfter: dateInterval.start,
            matching: components,
            matchingPolicy: .nextTime
        ) { date, _, stop in
            guard let date = date else { return }
            
            guard date < dateInterval.end else {
                stop = true
                return
            }
            
            dates.append(date)
        }
        
        return dates
    }
    
    func generateDays(for dateInterval: DateInterval) -> [Date] {
        generateDates(
            for: dateInterval,
            matching: dateComponents([.hour, .minute, .second], from: dateInterval.start)
        )
    }
}

private extension Date {
    func startOfMonth(using calendar: Calendar) -> Date {
        calendar.date(
            from: calendar.dateComponents([.year, .month], from: self)
        ) ?? self
    }
}

private extension DateFormatter {
    convenience init(dateFormat: String, calendar: Calendar) {
        self.init()
        self.dateFormat = dateFormat
        self.calendar = calendar
    }
}




//
//// MARK: - Previews
//
//#if DEBUG
//struct CalendarView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            FriendVaultTrackMoods(calendar: Calendar(identifier: .gregorian))
//            FriendVaultTrackMoods(calendar: Calendar(identifier: .islamicUmmAlQura))
//            FriendVaultTrackMoods(calendar: Calendar(identifier: .hebrew))
//            FriendVaultTrackMoods(calendar: Calendar(identifier: .indian))
//        }
//    }
//}
//#endif

//
//  AnalyticsDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 7/28/21.
//

import Foundation
import Amplify
import AmplifyPlugins

struct AnalyticsDataSource {
    
    func recordChatSessionEvent(duration: Double) {
        let properties: AnalyticsProperties = [
            "user": Amplify.Auth.getCurrentUser()?.username ?? "No username",
            "durationInChat": duration
        ]
        let event = BasicAnalyticsEvent(name: "chatSessionEvent", properties: properties)
        Amplify.Analytics.record(event: event)
        Amplify.Analytics.flushEvents()
        print("Flushed\n\n\n\n\n\n")
    }
    
    func recordSmileVaultDepartureEvent() {
        let user = UserDataSource().getCurrentUser()
        let properties: AnalyticsProperties = [
            "user": Amplify.Auth.getCurrentUser()?.username ?? "No username",
            "SVmessages": user.smileNotes.count
        ]
        let event = BasicAnalyticsEvent(name: "smileVaultDepartureEvent", properties: properties)
        Amplify.Analytics.record(event: event)
        Amplify.Analytics.flushEvents()
        print("Flushed\n\n\n\n\n\n")
    }
    
    func recordShakingCoolDepartureEvent() {
        let user = UserDataSource().getCurrentUser()
        let properties: AnalyticsProperties = [
            "user": Amplify.Auth.getCurrentUser()?.username ?? "No username",
            "SClinks": user.shakingCool.count,
            "friends": user.friends.count
        ]
        let event = BasicAnalyticsEvent(name: "shakingCoolDepartureEvent", properties: properties)
        Amplify.Analytics.record(event: event)
        Amplify.Analytics.flushEvents()
        print("Flushed\n\n\n\n\n\n")
    }
    
    func recordPhoneGotShakenEvent() {
        let user = UserDataSource().getCurrentUser()
        let properties: AnalyticsProperties = [
            "user": Amplify.Auth.getCurrentUser()?.username ?? "No username",
            "SClinks": user.shakingCool.count,
            "friends": user.friends.count
        ]
        let event = BasicAnalyticsEvent(name: "phoneGotShakenEvent", properties: properties)
        Amplify.Analytics.record(event: event)
        Amplify.Analytics.flushEvents()
        print("Flushed\n\n\n\n\n\n")
    }
}

// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var firstName: String
  public var lastName: String
  public var email: String
  public var birthday: Temporal.Date
  public var pronouns: String
  public var location: String
  public var adPreference: [Int]
  public var deviceFCMToken: String
  public var isOnline: Bool
  public var invitedRooms: [InvitedRoom]?
  public var secretPin: String
  public var friends: [String]?
  public var rooms: [String]?
  public var hiddenRooms: [String]?
  public var smileNotes: [SmileNote]?
  public var shakingCool: [ShakingCool]?
  public var tokens: Int
  public var background: Int
  public var unlockedStickers: [Int]?
  public var BMFriend: String?
  public var BMRoom: String?
  public var notificationsBM: Bool
  public var notificationsLP: Bool
  public var chatFontSize: Int
  public var pendingNotifications: [String]?
  public var needIntro: Bool
  public var backgroundImageLink: String?
  
  public init(id: String = UUID().uuidString,
      firstName: String,
      lastName: String,
      email: String,
      birthday: Temporal.Date,
      pronouns: String,
      location: String,
      adPreference: [Int] = [],
      deviceFCMToken: String,
      isOnline: Bool,
      invitedRooms: [InvitedRoom]? = [],
      secretPin: String,
      friends: [String]? = [],
      rooms: [String]? = [],
      hiddenRooms: [String]? = [],
      smileNotes: [SmileNote]? = [],
      shakingCool: [ShakingCool]? = [],
      tokens: Int,
      background: Int,
      unlockedStickers: [Int]? = [],
      BMFriend: String? = nil,
      BMRoom: String? = nil,
      notificationsBM: Bool,
      notificationsLP: Bool,
      chatFontSize: Int,
      pendingNotifications: [String]? = [],
      needIntro: Bool,
      backgroundImageLink: String? = nil) {
      self.id = id
      self.firstName = firstName
      self.lastName = lastName
      self.email = email
      self.birthday = birthday
      self.pronouns = pronouns
      self.location = location
      self.adPreference = adPreference
      self.deviceFCMToken = deviceFCMToken
      self.isOnline = isOnline
      self.invitedRooms = invitedRooms
      self.secretPin = secretPin
      self.friends = friends
      self.rooms = rooms
      self.hiddenRooms = hiddenRooms
      self.smileNotes = smileNotes
      self.shakingCool = shakingCool
      self.tokens = tokens
      self.background = background
      self.unlockedStickers = unlockedStickers
      self.BMFriend = BMFriend
      self.BMRoom = BMRoom
      self.notificationsBM = notificationsBM
      self.notificationsLP = notificationsLP
      self.chatFontSize = chatFontSize
      self.pendingNotifications = pendingNotifications
      self.needIntro = needIntro
      self.backgroundImageLink = backgroundImageLink
  }
}
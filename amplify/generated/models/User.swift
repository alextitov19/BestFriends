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
  public var location: String?
  public var adPreference: String
  public var deviceFCMToken: String
  public var isOnline: Bool
  public var invitedRooms: [InvitedRoom]?
  public var secretPin: String
  public var friends: [String]?
  public var rooms: [String]?
  public var hiddenRooms: [String]?
  public var smileNotes: [SmileNote]?
  public var shakingCoolLinks: [String]?
  public var tokens: Int
  public var background: Int
  public var unlockedStickers: [Int]?
  public var blueMode: Bool
  public var notificationsBM: Bool
  public var notificationsLP: Bool
  
  public init(id: String = UUID().uuidString,
      firstName: String,
      lastName: String,
      email: String,
      birthday: Temporal.Date,
      pronouns: String,
      location: String? = nil,
      adPreference: String,
      deviceFCMToken: String,
      isOnline: Bool,
      invitedRooms: [InvitedRoom]? = [],
      secretPin: String,
      friends: [String]? = [],
      rooms: [String]? = [],
      hiddenRooms: [String]? = [],
      smileNotes: [SmileNote]? = [],
      shakingCoolLinks: [String]? = [],
      tokens: Int,
      background: Int,
      unlockedStickers: [Int]? = [],
      blueMode: Bool,
      notificationsBM: Bool,
      notificationsLP: Bool) {
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
      self.shakingCoolLinks = shakingCoolLinks
      self.tokens = tokens
      self.background = background
      self.unlockedStickers = unlockedStickers
      self.blueMode = blueMode
      self.notificationsBM = notificationsBM
      self.notificationsLP = notificationsLP
  }
}
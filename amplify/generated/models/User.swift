// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var firstName: String
  public var lastName: String
  public var birthday: Temporal.Date
  public var pronouns: String
  public var location: String
  public var adPreference: String
  public var deviceFCMToken: String
  public var isOnline: Bool
  public var secretPin: String
  public var friends: [String]?
  public var rooms: [String]?
  public var hiddenRooms: [String]?
  public var smileNotes: [Message]?
  public var shakingCoolLinks: [String]?
  public var shakingCoolSeconds: Double
  
  public init(id: String = UUID().uuidString,
      firstName: String,
      lastName: String,
      birthday: Temporal.Date,
      pronouns: String,
      location: String,
      adPreference: String,
      deviceFCMToken: String,
      isOnline: Bool,
      secretPin: String,
      friends: [String]? = [],
      rooms: [String]? = [],
      hiddenRooms: [String]? = [],
      smileNotes: [Message]? = [],
      shakingCoolLinks: [String]? = [],
      shakingCoolSeconds: Double) {
      self.id = id
      self.firstName = firstName
      self.lastName = lastName
      self.birthday = birthday
      self.pronouns = pronouns
      self.location = location
      self.adPreference = adPreference
      self.deviceFCMToken = deviceFCMToken
      self.isOnline = isOnline
      self.secretPin = secretPin
      self.friends = friends
      self.rooms = rooms
      self.hiddenRooms = hiddenRooms
      self.smileNotes = smileNotes
      self.shakingCoolLinks = shakingCoolLinks
      self.shakingCoolSeconds = shakingCoolSeconds
  }
}
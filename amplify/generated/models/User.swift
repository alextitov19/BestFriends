// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var username: String
  public var firstName: String
  public var lastName: String
  public var birthday: Temporal.Date
  public var pronouns: String
  public var location: String
  public var adPreference: String
  public var friends: [String]?
  public var rooms: [String]?
  
  public init(id: String = UUID().uuidString,
      username: String,
      firstName: String,
      lastName: String,
      birthday: Temporal.Date,
      pronouns: String,
      location: String,
      adPreference: String,
      friends: [String]? = [],
      rooms: [String]? = []) {
      self.id = id
      self.username = username
      self.firstName = firstName
      self.lastName = lastName
      self.birthday = birthday
      self.pronouns = pronouns
      self.location = location
      self.adPreference = adPreference
      self.friends = friends
      self.rooms = rooms
  }
}
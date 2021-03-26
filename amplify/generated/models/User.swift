// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var name: String
  public var birthday: Temporal.Date
  public var rooms: [String]?
  
  public init(id: String = UUID().uuidString,
      name: String,
      birthday: Temporal.Date,
      rooms: [String]? = []) {
      self.id = id
      self.name = name
      self.birthday = birthday
      self.rooms = rooms
  }
}
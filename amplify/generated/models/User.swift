// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var name: String
  public var birthdate: Temporal.Date
  public var rooms: [String]?
  
  public init(id: String = UUID().uuidString,
      name: String,
      birthdate: Temporal.Date,
      rooms: [String]? = []) {
      self.id = id
      self.name = name
      self.birthdate = birthdate
      self.rooms = rooms
  }
}
// swiftlint:disable all
import Amplify
import Foundation

extension User {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case firstName
    case lastName
    case birthday
    case pronouns
    case location
    case adPreference
    case deviceFCMToken
    case isOnline
    case secretPin
    case friends
    case rooms
    case hiddenRooms
    case smileNotes
    case shakingCoolLinks
    case tokens
    case background
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let user = User.keys
    
    model.pluralName = "Users"
    
    model.fields(
      .id(),
      .field(user.firstName, is: .required, ofType: .string),
      .field(user.lastName, is: .required, ofType: .string),
      .field(user.birthday, is: .required, ofType: .date),
      .field(user.pronouns, is: .required, ofType: .string),
      .field(user.location, is: .required, ofType: .string),
      .field(user.adPreference, is: .required, ofType: .string),
      .field(user.deviceFCMToken, is: .required, ofType: .string),
      .field(user.isOnline, is: .required, ofType: .bool),
      .field(user.secretPin, is: .required, ofType: .string),
      .field(user.friends, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.rooms, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.hiddenRooms, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.smileNotes, is: .optional, ofType: .embeddedCollection(of: Message.self)),
      .field(user.shakingCoolLinks, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.tokens, is: .required, ofType: .int),
      .field(user.background, is: .required, ofType: .int)
    )
    }
}
// swiftlint:disable all
import Amplify
import Foundation

extension User {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case firstName
    case lastName
    case email
    case birthday
    case pronouns
    case location
    case adPreference
    case deviceFCMToken
    case isOnline
    case invitedRooms
    case secretPin
    case friends
    case rooms
    case hiddenRooms
    case smileNotes
    case shakingCoolLinks
    case tokens
    case background
    case unlockedStickers
    case BMFriend
    case BMRoom
    case notificationsBM
    case notificationsLP
    case chatFontSize
    case pendingNotifications
    case needIntro
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
      .field(user.email, is: .required, ofType: .string),
      .field(user.birthday, is: .required, ofType: .date),
      .field(user.pronouns, is: .required, ofType: .string),
      .field(user.location, is: .required, ofType: .string),
      .field(user.adPreference, is: .required, ofType: .embeddedCollection(of: Int.self)),
      .field(user.deviceFCMToken, is: .required, ofType: .string),
      .field(user.isOnline, is: .required, ofType: .bool),
      .field(user.invitedRooms, is: .optional, ofType: .embeddedCollection(of: InvitedRoom.self)),
      .field(user.secretPin, is: .required, ofType: .string),
      .field(user.friends, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.rooms, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.hiddenRooms, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.smileNotes, is: .optional, ofType: .embeddedCollection(of: SmileNote.self)),
      .field(user.shakingCoolLinks, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.tokens, is: .required, ofType: .int),
      .field(user.background, is: .required, ofType: .int),
      .field(user.unlockedStickers, is: .optional, ofType: .embeddedCollection(of: Int.self)),
      .field(user.BMFriend, is: .optional, ofType: .string),
      .field(user.BMRoom, is: .optional, ofType: .string),
      .field(user.notificationsBM, is: .required, ofType: .bool),
      .field(user.notificationsLP, is: .required, ofType: .bool),
      .field(user.chatFontSize, is: .required, ofType: .int),
      .field(user.pendingNotifications, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(user.needIntro, is: .required, ofType: .bool)
    )
    }
}
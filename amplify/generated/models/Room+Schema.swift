// swiftlint:disable all
import Amplify
import Foundation

extension Room {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case creatorID
    case members
    case messages
    case timeUpdated
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let room = Room.keys
    
    model.pluralName = "Rooms"
    
    model.fields(
      .id(),
      .field(room.name, is: .required, ofType: .string),
      .field(room.creatorID, is: .required, ofType: .string),
      .field(room.members, is: .required, ofType: .embeddedCollection(of: String.self)),
      .field(room.messages, is: .required, ofType: .embeddedCollection(of: Message.self)),
      .field(room.timeUpdated, is: .required, ofType: .int)
    )
    }
}
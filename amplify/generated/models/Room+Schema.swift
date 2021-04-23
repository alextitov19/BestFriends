// swiftlint:disable all
import Amplify
import Foundation

extension Room {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case messages
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let room = Room.keys
    
    model.pluralName = "Rooms"
    
    model.fields(
      .id(),
      .field(room.messages, is: .required, ofType: .embeddedCollection(of: String.self))
    )
    }
}
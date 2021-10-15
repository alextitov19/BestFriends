// swiftlint:disable all
import Amplify
import Foundation

extension Message {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case senderName
    case senderID
    case body
    case creationDate
    case attachmentPath
    case stickerNumber
    case hasBeenLiked
    case hasBeenThumb
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let message = Message.keys
    
    model.pluralName = "Messages"
    
    model.fields(
      .id(),
      .field(message.senderName, is: .required, ofType: .string),
      .field(message.senderID, is: .required, ofType: .string),
      .field(message.body, is: .required, ofType: .string),
      .field(message.creationDate, is: .required, ofType: .int),
      .field(message.attachmentPath, is: .optional, ofType: .string),
      .field(message.stickerNumber, is: .optional, ofType: .int),
      .field(message.hasBeenLiked, is: .required, ofType: .bool),
      .field(message.hasBeenThumb, is: .required, ofType: .bool)
    )
    }
}
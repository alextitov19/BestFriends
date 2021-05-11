// swiftlint:disable all
import Amplify
import Foundation

extension Notification {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case targetID
    case targetDevice
    case senderID
    case body
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let notification = Notification.keys
    
    model.pluralName = "Notifications"
    
    model.fields(
      .id(),
      .field(notification.targetID, is: .required, ofType: .string),
      .field(notification.targetDevice, is: .required, ofType: .string),
      .field(notification.senderID, is: .required, ofType: .string),
      .field(notification.body, is: .required, ofType: .string)
    )
    }
}
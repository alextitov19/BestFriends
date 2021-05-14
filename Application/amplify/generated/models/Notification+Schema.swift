// swiftlint:disable all
import Amplify
import Foundation

extension Notification {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case body
    case deviceToken
    case senderID
    case senderName
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let notification = Notification.keys
    
    model.pluralName = "Notifications"
    
    model.fields(
      .id(),
      .field(notification.body, is: .required, ofType: .string),
      .field(notification.deviceToken, is: .required, ofType: .string),
      .field(notification.senderID, is: .required, ofType: .string),
      .field(notification.senderName, is: .required, ofType: .string)
    )
    }
}
// swiftlint:disable all
import Amplify
import Foundation

extension ReportedMessage {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case message
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let reportedMessage = ReportedMessage.keys
    
    model.pluralName = "ReportedMessages"
    
    model.fields(
      .id(),
      .field(reportedMessage.message, is: .required, ofType: .embedded(type: Message.self))
    )
    }
}
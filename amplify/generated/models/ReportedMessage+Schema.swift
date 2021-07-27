// swiftlint:disable all
import Amplify
import Foundation

extension ReportedMessage {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case reporterID
    case reportedMessage
    case previousMessages
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let reportedMessage = ReportedMessage.keys
    
    model.pluralName = "ReportedMessages"
    
    model.fields(
      .id(),
      .field(reportedMessage.reporterID, is: .required, ofType: .string),
      .field(reportedMessage.reportedMessage, is: .required, ofType: .embedded(type: Message.self)),
      .field(reportedMessage.previousMessages, is: .required, ofType: .embeddedCollection(of: Message.self)),
      .field(reportedMessage.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(reportedMessage.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}
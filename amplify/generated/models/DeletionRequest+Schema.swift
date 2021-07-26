// swiftlint:disable all
import Amplify
import Foundation

extension DeletionRequest {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case userid
    case userEmail
    case reason
    case date
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let deletionRequest = DeletionRequest.keys
    
    model.pluralName = "DeletionRequests"
    
    model.fields(
      .id(),
      .field(deletionRequest.userid, is: .required, ofType: .string),
      .field(deletionRequest.userEmail, is: .required, ofType: .string),
      .field(deletionRequest.reason, is: .required, ofType: .string),
      .field(deletionRequest.date, is: .required, ofType: .date),
      .field(deletionRequest.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(deletionRequest.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}
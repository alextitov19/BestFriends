// swiftlint:disable all
import Amplify
import Foundation

extension ManagementDocument {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case documents
    case emails
    case usernames
    case prices
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let managementDocument = ManagementDocument.keys
    
    model.pluralName = "ManagementDocuments"
    
    model.fields(
      .id(),
      .field(managementDocument.documents, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(managementDocument.emails, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(managementDocument.usernames, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(managementDocument.prices, is: .optional, ofType: .embeddedCollection(of: Int.self)),
      .field(managementDocument.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(managementDocument.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}
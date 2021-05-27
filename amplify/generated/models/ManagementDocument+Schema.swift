// swiftlint:disable all
import Amplify
import Foundation

extension ManagementDocument {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case documents
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let managementDocument = ManagementDocument.keys
    
    model.pluralName = "ManagementDocuments"
    
    model.fields(
      .id(),
      .field(managementDocument.documents, is: .optional, ofType: .embeddedCollection(of: String.self))
    )
    }
}
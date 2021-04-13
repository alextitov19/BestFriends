// swiftlint:disable all
import Amplify
import Foundation

extension NoteData {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case description
    case image
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let noteData = NoteData.keys
    
    model.authRules = [
      rule(allow: .owner, ownerField: "owner", identityClaim: "cognito:username", operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "NoteData"
    
    model.fields(
      .id(),
      .field(noteData.name, is: .required, ofType: .string),
      .field(noteData.description, is: .optional, ofType: .string),
      .field(noteData.image, is: .optional, ofType: .string)
    )
    }
}
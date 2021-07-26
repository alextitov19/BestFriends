// swiftlint:disable all
import Amplify
import Foundation

extension SmileNote {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case message
    case favorite
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let smileNote = SmileNote.keys
    
    model.pluralName = "SmileNotes"
    
    model.fields(
      .id(),
      .field(smileNote.message, is: .required, ofType: .embedded(type: Message.self)),
      .field(smileNote.favorite, is: .required, ofType: .bool)
    )
    }
}
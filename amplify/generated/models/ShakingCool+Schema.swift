// swiftlint:disable all
import Amplify
import Foundation

extension ShakingCool {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case link
    case intendedid
    case intendedname
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let shakingCool = ShakingCool.keys
    
    model.pluralName = "ShakingCools"
    
    model.fields(
      .id(),
      .field(shakingCool.link, is: .required, ofType: .string),
      .field(shakingCool.intendedid, is: .required, ofType: .string),
      .field(shakingCool.intendedname, is: .required, ofType: .string)
    )
    }
}
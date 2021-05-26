// swiftlint:disable all
import Amplify
import Foundation

extension Advertisement {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case category
    case videoLink
    case adLink
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let advertisement = Advertisement.keys
    
    model.pluralName = "Advertisements"
    
    model.fields(
      .id(),
      .field(advertisement.category, is: .required, ofType: .string),
      .field(advertisement.videoLink, is: .required, ofType: .string),
      .field(advertisement.adLink, is: .required, ofType: .string)
    )
    }
}
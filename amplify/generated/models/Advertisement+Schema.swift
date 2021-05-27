// swiftlint:disable all
import Amplify
import Foundation

extension Advertisement {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case category
    case videoName
    case adLink
    case duration
    case hasAudio
    case likes
    case views
    case shares
    case clicks
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let advertisement = Advertisement.keys
    
    model.pluralName = "Advertisements"
    
    model.fields(
      .id(),
      .field(advertisement.category, is: .required, ofType: .string),
      .field(advertisement.videoName, is: .required, ofType: .string),
      .field(advertisement.adLink, is: .required, ofType: .string),
      .field(advertisement.duration, is: .required, ofType: .double),
      .field(advertisement.hasAudio, is: .required, ofType: .bool),
      .field(advertisement.likes, is: .required, ofType: .int),
      .field(advertisement.views, is: .required, ofType: .int),
      .field(advertisement.shares, is: .required, ofType: .int),
      .field(advertisement.clicks, is: .required, ofType: .int)
    )
    }
}
// swiftlint:disable all
import Amplify
import Foundation

public struct Advertisement: Model {
  public let id: String
  public var category: String
  public var videoLink: String
  public var adLink: String
  
  public init(id: String = UUID().uuidString,
      category: String,
      videoLink: String,
      adLink: String) {
      self.id = id
      self.category = category
      self.videoLink = videoLink
      self.adLink = adLink
  }
}
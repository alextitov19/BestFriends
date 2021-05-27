// swiftlint:disable all
import Amplify
import Foundation

public struct Advertisement: Model {
  public let id: String
  public var category: String
  public var videoName: String
  public var adLink: String
  public var duration: Double
  public var hasAudio: Bool
  public var likes: Int
  public var views: Int
  public var shares: Int
  public var clicks: Int
  
  public init(id: String = UUID().uuidString,
      category: String,
      videoName: String,
      adLink: String,
      duration: Double,
      hasAudio: Bool,
      likes: Int,
      views: Int,
      shares: Int,
      clicks: Int) {
      self.id = id
      self.category = category
      self.videoName = videoName
      self.adLink = adLink
      self.duration = duration
      self.hasAudio = hasAudio
      self.likes = likes
      self.views = views
      self.shares = shares
      self.clicks = clicks
  }
}
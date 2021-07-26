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
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
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
    self.init(id: id,
      category: category,
      videoName: videoName,
      adLink: adLink,
      duration: duration,
      hasAudio: hasAudio,
      likes: likes,
      views: views,
      shares: shares,
      clicks: clicks,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      category: String,
      videoName: String,
      adLink: String,
      duration: Double,
      hasAudio: Bool,
      likes: Int,
      views: Int,
      shares: Int,
      clicks: Int,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
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
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}
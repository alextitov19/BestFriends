// swiftlint:disable all
import Amplify
import Foundation

public struct DeletionRequest: Model {
  public let id: String
  public var userid: String
  public var userEmail: String
  public var reason: String
  public var date: Temporal.Date
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      userid: String,
      userEmail: String,
      reason: String,
      date: Temporal.Date) {
    self.init(id: id,
      userid: userid,
      userEmail: userEmail,
      reason: reason,
      date: date,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      userid: String,
      userEmail: String,
      reason: String,
      date: Temporal.Date,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.userid = userid
      self.userEmail = userEmail
      self.reason = reason
      self.date = date
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}
// swiftlint:disable all
import Amplify
import Foundation

public struct DeletionRequest: Model {
  public let id: String
  public var userid: String
  public var userEmail: String
  public var reason: String
  public var date: Temporal.Date
  
  public init(id: String = UUID().uuidString,
      userid: String,
      userEmail: String,
      reason: String,
      date: Temporal.Date) {
      self.id = id
      self.userid = userid
      self.userEmail = userEmail
      self.reason = reason
      self.date = date
  }
}
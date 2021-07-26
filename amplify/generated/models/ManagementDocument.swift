// swiftlint:disable all
import Amplify
import Foundation

public struct ManagementDocument: Model {
  public let id: String
  public var documents: [String?]?
  public var emails: [String?]?
  public var usernames: [String?]?
  public var prices: [Int?]?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      documents: [String?]? = nil,
      emails: [String?]? = nil,
      usernames: [String?]? = nil,
      prices: [Int?]? = nil) {
    self.init(id: id,
      documents: documents,
      emails: emails,
      usernames: usernames,
      prices: prices,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      documents: [String?]? = nil,
      emails: [String?]? = nil,
      usernames: [String?]? = nil,
      prices: [Int?]? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.documents = documents
      self.emails = emails
      self.usernames = usernames
      self.prices = prices
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}
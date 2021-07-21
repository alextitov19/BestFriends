// swiftlint:disable all
import Amplify
import Foundation

public struct ManagementDocument: Model {
  public let id: String
  public var documents: [String]?
  public var emails: [String]?
  public var usernames: [String]?
  public var prices: [Int]?
  
  public init(id: String = UUID().uuidString,
      documents: [String]? = [],
      emails: [String]? = [],
      usernames: [String]? = [],
      prices: [Int]? = []) {
      self.id = id
      self.documents = documents
      self.emails = emails
      self.usernames = usernames
      self.prices = prices
  }
}
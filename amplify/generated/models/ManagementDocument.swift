// swiftlint:disable all
import Amplify
import Foundation

public struct ManagementDocument: Model {
  public let id: String
  public var documents: [String]?
  
  public init(id: String = UUID().uuidString,
      documents: [String]? = []) {
      self.id = id
      self.documents = documents
  }
}
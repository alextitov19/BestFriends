// swiftlint:disable all
import Amplify
import Foundation

public struct SmileNote: Embeddable {
  var id: String
  var message: Message
  var favorite: Bool
}
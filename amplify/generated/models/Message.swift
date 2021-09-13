// swiftlint:disable all
import Amplify
import Foundation

public struct Message: Embeddable {
  var id: String
  var senderName: String
  var senderID: String
  var body: String
  var creationDate: Int
  var attachmentPath: String?
  var stickerNumber: Int?
  var hasBeenLiked: Bool
}
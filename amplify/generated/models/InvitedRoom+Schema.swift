// swiftlint:disable all
import Amplify
import Foundation

extension InvitedRoom {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case roomID
    case timer
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let invitedRoom = InvitedRoom.keys
    
    model.pluralName = "InvitedRooms"
    
    model.fields(
      .field(invitedRoom.roomID, is: .required, ofType: .string),
      .field(invitedRoom.timer, is: .optional, ofType: .int)
    )
    }
}
// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "219789a5aae15f0309a32b962a75c9af"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Room.self)
    ModelRegistry.register(modelType: ReportedMessage.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Advertisement.self)
    ModelRegistry.register(modelType: ManagementDocument.self)
  }
}
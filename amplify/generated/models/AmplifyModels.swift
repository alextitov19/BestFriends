// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "c0eca7403beec1e2ffd231cad9f6aa94"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Room.self)
    ModelRegistry.register(modelType: ReportedMessage.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Advertisement.self)
    ModelRegistry.register(modelType: ManagementDocument.self)
  }
}
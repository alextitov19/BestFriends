// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "fc4a495bfd11801d257083f5a4c5b010"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Room.self)
    ModelRegistry.register(modelType: DeletionRequest.self)
    ModelRegistry.register(modelType: ReportedMessage.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Advertisement.self)
    ModelRegistry.register(modelType: ManagementDocument.self)
  }
}
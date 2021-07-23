// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "41fad4cb6b23f0e9331e7c78675e7d04"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Room.self)
    ModelRegistry.register(modelType: DeletionRequest.self)
    ModelRegistry.register(modelType: ReportedMessage.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Advertisement.self)
    ModelRegistry.register(modelType: ManagementDocument.self)
  }
}
// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "b95459a1b5287d04448657ba81531485"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Room.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Notification.self)
  }
}
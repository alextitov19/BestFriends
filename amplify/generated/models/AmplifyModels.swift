// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "9b2f3d7ed76efcc8f8dae64495eac88e"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Message.self)
    ModelRegistry.register(modelType: User.self)
  }
}
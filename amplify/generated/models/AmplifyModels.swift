// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "9c4a6f16c57c716d46d75056dca39b53"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Room.self)
    ModelRegistry.register(modelType: User.self)
  }
}
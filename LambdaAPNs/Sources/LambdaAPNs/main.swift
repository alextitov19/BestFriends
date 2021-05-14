import AWSLambdaEvents
import AWSLambdaRuntime
import Foundation

Lambda.run { (context, payload: String, completion: @escaping (Result<String, Error>) -> Void) in
    completion(.success("Hello, \(payload)"))
}
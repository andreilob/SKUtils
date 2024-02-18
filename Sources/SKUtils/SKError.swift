import Foundation

public protocol SKError: Error {
    var title: String { get }
    var message: String { get }
}

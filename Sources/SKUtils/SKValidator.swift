import Foundation

public final class SKValidator {
    private let passwordValidator = SKPasswordValidator()
    private let emailValidator = SKEmailValidator()
    
    public init() {}
    
    public func validateEmail(_ email: String) -> Bool {
        emailValidator.isValidEmail(email)
    }
    
    public func validatePassword(_ password: String) -> Bool {
        passwordValidator.isValidPassword(password)
    }
}

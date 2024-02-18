import Foundation

final class SKPasswordValidator {
    /// Validates the password to have at least 6 characters, one special character, one digit and one uppercased letter.
    func isValidPassword(_ password: String) -> Bool {
        guard password.count >= 6,
              NSPredicate(format:"SELF MATCHES %@", ".*[A-Z]+.*").evaluate(with: password),
              NSPredicate(format:"SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: password),
              NSPredicate(format:"SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: password),
              NSPredicate(format:"SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: password) else { return false }
        return true
    }
}

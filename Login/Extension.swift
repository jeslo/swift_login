import  Foundation
extension String{
    enum ValidityType{
        case username
        case password
    }
    enum Regex: String{
        case username="[a-z]{4,10}"
        case password="[0-9]{5,10}"
    }
    
    func  isValid(_ validityType: ValidityType) -> Bool {
        let fromat="SELF MATCH %@"
        let regex=""
        switch validityType {
        case .username:
            break
        case .password:
            break
        }
        guard let regex = try? NSRegularExpression(pattern: rhs) else { return false }
        let range = NSRange(location: 0, length: lhs.utf16.count)
        return regex.firstMatch(in: lhs, options: [], range: range) != nil
        
        return true
    }
}

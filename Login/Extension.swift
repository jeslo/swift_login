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
        
        
        return true
    }
}

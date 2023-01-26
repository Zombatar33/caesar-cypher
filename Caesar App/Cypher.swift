protocol Cypher {
    mutating func encrypt(input: String, parameters: [Any]) -> String
    mutating func decrypt(input: String, parameters: [Any]) -> String
}

struct Caesar: Cypher {
    func encrypt(input: String, parameters: [Any]) -> String {
        let offset = parameters[0] as! Int
        let shift = input.unicodeScalars.map({ UnicodeScalar(Int($0.value) + offset)! })
        let result = String(String.UnicodeScalarView(shift))
        
        return result;
    }
    
    func decrypt(input: String, parameters: [Any]) -> String {
        print (input)
        
        let offset = parameters[0] as! Int
        
        // vor unwarp auf nil prüfen!s
        let shift = input.unicodeScalars.map({ UnicodeScalar(Int($0.value) - offset)! })
        
        let result = String(String.UnicodeScalarView(shift))
 
        return result;
    }
}

struct FBI: Cypher {
    func encrypt(input: String, parameters: [Any]) -> String {
        return "[TEST123]" + input + "[TEST123]";
    }
    
    func decrypt(input: String, parameters: [Any]) -> String {
        return input.replacing("[TEST123]", with: "")
    }
}

extension String {
    func encrypt(cypher: Cypher, params: [Any]) -> String {
        var cypher = cypher;
        return cypher.encrypt(input: self, parameters: params);
    }
    
    func decrypt(cypher: Cypher, params: [Any]) -> String {
        var cypher = cypher;
        return cypher.decrypt(input: self, parameters: params);
    }
}


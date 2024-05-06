import Foundation
import Alamofire

class NetworkManager {
    
    static var shared = NetworkManager()
    
    func getText(_ completion: @escaping ((SentenceData?) -> ())) {
        
        let url = URL(string: "https://api.gameofthronesquotes.xyz/v1/random")!
        
        AF.request(url).response { response in
            let decoder = JSONDecoder()
            
            let sentence = try! decoder.decode(SentenceData.self, from: response.data!)
            
            completion(sentence)
        }
    }
    
}

struct Character: Codable {
    let name: String?
    let slug: String?
    let house: House?
    
    struct House: Codable {
        let name: String?
        let slug: String?
    }
}

struct SentenceData: Codable {
    let sentence: String?
    let character: Character?
}

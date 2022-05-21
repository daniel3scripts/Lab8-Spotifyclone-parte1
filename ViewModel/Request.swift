

import Foundation

class Request {
    
    let token = "BQCWuEJNv8ENaIoGA74FTXkQPwJTasVF9mpBlvcBeA9aMH5FkdLL9S_9yeYKfQfwIrUDBj8TH7rdtJSi6kO1nvwcX1_mkNiXVfQoXu0XMnPPYaRCbzy38XyXrEfpESGiLVL-N2cXCoQewiBKWFDrA2FARli46mmclAJ1M-kVTEFPZsTWaA"
    
    let BASE_URL = "https://api.spotify.com/v1/me/playlists"
    
    //recordar que si un type tiene el ? es porque puede ser nil
    //la funcion retorna un Data o nil
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
}

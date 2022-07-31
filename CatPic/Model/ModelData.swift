import Foundation

var cats = decodeJsonFromUrl()

func decodeJsonFromUrl(jsonUrl: String) -> [Cat] {
    guard let url = URL(string: jsonUrl) else {fatalError("Missing URL")}

    let request = URLRequest (url: url)
    request.httpMethod = "GET"
    request.addValue(Constants.apiKey, forHTTPHeaderField: "x-api-key")
    URLSession.shared.dataTask(with:request) {data, response, error in 
        if let error = error {
            fatalError("Request error: \(error)")
        }
        guard let response = response as? HTTPURLResponse else { return }
        if response.statusCode == 200 {
            guard let data = data else { return }
            DispatchQueue.main.async {
                do {
                    let decoded = try JSONDecoder().decode([Cat].self, from: data)
                    return decoded
                } catch let error {
                    fatalError("JSON Decode error: \(error)")
                }
            }
        }
    }.resume()
}
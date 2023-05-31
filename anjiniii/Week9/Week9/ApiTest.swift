//
//  ApiTest.swift
//  Week9
//
//  Created by 이안진 on 2023/05/31.
//

import Foundation

class ApiTest: ObservableObject {
    func urlSessionApi(completion: @escaping (WelcomeResponse) -> Void) {
        let session = URLSession(configuration: .default)
        guard let url = URL(string: "https://dummyjson.com/products/1") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "Get"
        
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                print("DEBUG urlSessionApi error: \(error)")
                return
            }
            
            if let data = data {
                guard let output = try? JSONDecoder().decode(WelcomeResponse.self, from: data) else { return }
                print("DEBUG urlSessionApi success output: \(output)")
                completion(output)
            }
        }
        
        task.resume()
    }
}

struct WelcomeResponse: Codable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
}

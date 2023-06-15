//
//  API.swift
//  API Handling
//
//  Created by Kaplan2 on 15/06/23.
//

import Foundation

class API {
    static let shared = API()
    private init() {}
    
    func fetchPokeMan(url: String)  async {
        guard let baseURL = URL(string: url) else { return }
        do {
            let (data,_) = try await URLSession.shared.data(from: baseURL)
        } catch {
            print(error.localizedDescription)
        }
        
    }
}

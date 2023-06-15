//
//  PokeManViewModel.swift
//  API Handling
//
//  Created by Kaplan2 on 15/06/23.
//

import Foundation

class PokeManViewModel: ObservableObject {
    @Published var model: [KingFisherModel] = []
    private let url = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init() {
        Task {
            await fetchPokeMan()
        }
    }
    
    func fetchPokeMan()  async {
        guard let baseURL = URL(string: url) else { return }
        URLSession.shared.dataTask(with: URLRequest(url: baseURL), completionHandler: { data, response, error in
            do {
                guard let data = data?.removeData(value: "null,") else { return}
                let pokeMan = try JSONDecoder().decode([KingFisherModel].self, from: data)
                DispatchQueue.main.async {
                    self.model = pokeMan
                }
            } catch {
                print(error.localizedDescription)
            }
        }).resume()
            
    }
    
}

extension Data {
    func removeData(value: String) -> Data? {
        let name = String(data: self, encoding: .utf8)
        let replaceValue = name?.replacingOccurrences(of: value, with: "")
        guard let data = replaceValue?.data(using: .utf8) else {return nil}
        return data
    }
}

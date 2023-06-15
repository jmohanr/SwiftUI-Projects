//
//  RecipeInfoViewModel.swift
//  API Handling
//
//  Created by Kaplan2 on 14/06/23.
//

import Foundation

class RecipeInfoViewModel: ObservableObject {
    @Published var infoModel:InfoModel?
    
    init()  {
        Task {
            await loadInfoData()
        }
       
    }
    
    func loadInfoData() async {
        guard let url = Bundle.main.url(forResource: "mock2", withExtension: "json") else { return}
        do {
            let data = try  Data(contentsOf: url)
            let info = try JSONDecoder().decode(InfoModel.self, from: data)
            DispatchQueue.main.async {
                self.infoModel = info
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func data() -> [ExtendedIngredients] {
        if let value = infoModel?.extendedIngredients {
            return value
        }
        return []
    }
}

//
//  BulkRecipeInfoViewModel.swift
//  API Handling
//
//  Created by Kaplan2 on 14/06/23.
//

import Foundation

class BulkRecipeInfoViewModel: ObservableObject {
    @Published var infoModel:[InfoModel] = []
    
    init()  {
        Task {
            await loadInfoData()
        }
        
    }
    
    func loadInfoData() async {
        guard let url = Bundle.main.url(forResource: "mock1", withExtension: "json") else { return}
        do {
            let data = try  Data(contentsOf: url)
        
            let info = try JSONDecoder().decode([InfoModel].self, from: data)
            print("------->\(info.count)")
            self.infoModel = info
           
        } catch {
            print(error.localizedDescription)
        }
    }
    
}

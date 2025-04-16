//
//  SearchListUseCase.swift
//  AppStoreAPI
//
//  Created by 201510089 jch on 4/15/25.
//

import Foundation

class SearchListUseCase {
    let repository: SearchListInterfaces
    
    init (repository: SearchListInterfaces) {
        self.repository = repository
    }
    
    func searchList(completion: @escaping ([SearchList]) -> Void) {
        repository.searchList(completion: completion)
    }
}

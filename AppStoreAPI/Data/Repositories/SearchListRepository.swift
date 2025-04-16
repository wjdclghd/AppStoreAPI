//
//  SearchListRepository.swift
//  AppStoreAPI
//
//  Created by 201510089 jch on 4/15/25.
//

import Foundation
import Combine

class SearchListRepository: SearchListInterfaces {
    init () {
        
    }
    
    var subscriptions = Set<AnyCancellable>()
    
    func searchList(completion: @escaping ([SearchList]) -> Void) {
        APIService.searchList()
            .sink(receiveCompletion: {completion in
                switch completion {
                case .finished:
                    print("finish")
                case .failure(let error):
                    print(error)
                }
            }, receiveValue: {searchList in
                completion(searchList)
            })
            .store(in: &subscriptions)
    }
}

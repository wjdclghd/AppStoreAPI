//
//  APIService.swift
//  AppStoreAPI
//
//  Created by 201510089 jch on 4/15/25.
//

import Foundation
import Combine
import Alamofire

enum APIService {
    static func searchList() -> AnyPublisher<[SearchList], Error> {
        return AF.request(API.searchList.url)
            .publishDecodable(type: [SearchList].self)
            .value()
            .mapError{(resultError: AFError) in
                return resultError as Error
            }
            .eraseToAnyPublisher()
    }
}

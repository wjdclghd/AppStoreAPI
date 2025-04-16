//
//  API.swift
//  AppStoreAPI
//
//  Created by 201510089 jch on 4/15/25.
//

import Foundation

enum API {
    case searchList
    
    var url: URL {
        switch self {
        case .searchList:
            return URL(string: "https://itunes.apple.com/search")!
        }
    }
}

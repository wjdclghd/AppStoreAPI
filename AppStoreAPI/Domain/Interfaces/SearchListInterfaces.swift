//
//  SearchListInterfaces.swift
//  AppStoreAPI
//
//  Created by 201510089 jch on 4/15/25.
//

import Foundation

protocol SearchListInterfaces {
    func searchList(completion: @escaping ([SearchList]) -> Void)
}

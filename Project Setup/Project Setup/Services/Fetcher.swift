//
//  RemoteWithLocalFalbackFetcher.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 11/24/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import Foundation

class Fetcher<T: Decodable>: JSONFetcher {
    func fetch(file: String, completion: @escaping (Result<T, Error>) -> Void) {
        JSONLoader<T>().local(jsonFile: file) { (result) in
            switch result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    func fetch(url: String, completion: @escaping (Result<T, Error>) -> Void) {
        JSONLoader<T>().fromRemote(url: url) { (result) in
            switch result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

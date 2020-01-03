//
//  JSONLoader.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 11/18/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import Foundation

enum JSONLoaderError: Error {
    case someError
}

class JSONLoader<T: Decodable> {
    public func fromRemote(url: String, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: url)  else { return }
        let request = URLRequest(url: url,
                                 cachePolicy: URLRequest.CachePolicy.reloadIgnoringLocalCacheData,
                                 timeoutInterval: 30.0)
        URLSession.shared.dataTask(with: request) { (data, response, err) in
            print(response.debugDescription)
            if let error = err {
                completion(.failure(error))
            }
            guard let jsonData = data else { return }
            do {
                let result = try JSONDecoder().decode(T.self, from: jsonData)
                DispatchQueue.main.async { () -> Void in
                    completion(.success(result))
                }
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
                completion(.failure(jsonErr))
            }
        }.resume()
    }
    public func local(jsonFile: String, completion: @escaping (Result<T, Error>) -> Void) {
        do {
            let path = Bundle.main.path(forResource: jsonFile, ofType: "json")
            let jsonData = try Data(contentsOf: URL(fileURLWithPath: path!), options: .alwaysMapped)
            let result = try JSONDecoder().decode(T.self, from: jsonData)
            completion(.success(result))
        } catch let error {
            completion(.failure(error))
        }
    }
}

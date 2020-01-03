//
//  NetworkFetcher.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 11/24/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

protocol JSONFetcher {
    associatedtype T: Decodable // swiftlint:disable:this type_name
    func fetch(file: String, completion: @escaping (Result<T, Error>) -> Void)
    func fetch(url: String, completion: @escaping (Result<T, Error>) -> Void)
}

//
//  UniqueElements.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 11/11/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

public extension Sequence where Element: Equatable {
  var uniqueElements: [Element] {
    return self.reduce(into: []) { uniqueElements, element in
      if !uniqueElements.contains(element) {
        uniqueElements.append(element)
      }
    }
  }
}

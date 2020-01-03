//
//  String+Extensions.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 11/28/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

extension String {
    var convertToNewLine: String {
        return self.replacingOccurrences(of: "\\n", with: "\n")
    }
}

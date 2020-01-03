//
//  Bordered.swift
//  DSComponentsButtons
//
//  Created by Dimitar Stefanovski on 9/26/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

protocol Bordered {
    var borderColor: UIColor { get set }
    var borderWidth: CGFloat { get set }
}

extension Bordered where Self: UIView {
    func setDefaultBorder() {
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 4
    }
}

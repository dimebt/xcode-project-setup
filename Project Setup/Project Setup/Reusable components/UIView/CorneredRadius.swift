//
//  CorneredRadius.swift
//  DSComponentsButtons
//
//  Created by Dimitar Stefanovski on 9/25/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

protocol CorneredRadius {
    var cornerRadius: CGFloat { get set }
}

extension CorneredRadius where Self: UIView {
    func setDefaultCornerRadius() {
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
    }
}

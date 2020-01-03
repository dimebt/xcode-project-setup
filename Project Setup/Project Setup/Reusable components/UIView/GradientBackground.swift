//
//  GradientBackground.swift
//  DSComponentsButtons
//
//  Created by Dimitar Stefanovski on 9/27/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

protocol GradientBackground {
    var startColor: UIColor { get set }
    var endColor: UIColor { get set }
    //var titleColor: UIColor { get set }
    var startColorPressed: UIColor { get set }
    var endColorPressed: UIColor { get set }
    //var titleColorPressed: UIColor { get set }
    var cornerRadius: CGFloat { get set }
    var verticalGradient: Bool { get set }
    var angle: CGFloat { get set }
}

extension GradientBackground where Self: UIView {
}

protocol Gradient {
    var startColor: UIColor { get set }
    var endColor: UIColor { get set }
}
extension Gradient where Self: UIView {
}

//
//  Shadowed.swift
//  DSComponentsButtons
//
//  Created by Dimitar Stefanovski on 9/25/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

protocol Shadowed {
    var shadowColor: UIColor { get set }
    var shadowOffset: CGSize { get set }
    var shadowRadius: CGFloat { get set }
    var shadowOpacity: CGFloat { get set }
    func setShadow(with color: CGColor, offset: CGSize, radius: CGFloat, opacity: CGFloat)
}

extension Shadowed where Self: UIView {
    func setDefaultShadow() {
        self.layer.shadowColor = UIColor.red.cgColor
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        self.layer.shadowRadius = 5.0
        self.layer.shadowOpacity = 0.9
    }
    func pulseShadow(duration: Double, reps: Float) {
        let animation = CABasicAnimation(keyPath: "shadowOpacity")
        animation.fromValue = 0.2
        animation.toValue = 0.7
        animation.duration = duration
        animation.repeatCount = reps
        animation.autoreverses = true
        self.layer.add(animation, forKey: animation.keyPath)
    }
}

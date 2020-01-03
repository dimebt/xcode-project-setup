//
//  UIButtonRound.swift
//  DSComponentsButtons
//
//  Created by Dimitar Stefanovski on 9/25/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

@IBDesignable
final class UIButtonRound: UIButton, Shadowed, CorneredRadius, Bordered {
    // MARK: - Private properties
    internal var gradientLayer: CAGradientLayer = CAGradientLayer()
    internal var gradientLayerPressed: CAGradientLayer = CAGradientLayer()
    private var _shadowColor: UIColor = UIColor.clear {
        didSet {
            callSetShadow()
        }
    }
    private var _shadowOffset: CGSize = CGSize(width: 4, height: 4) {
        didSet {
            callSetShadow()
        }
    }
    private var _shadowRadius: CGFloat = 5.0 {
        didSet {
            callSetShadow()
        }
    }
    private var _shadowOpacity: CGFloat = 0.9 {
        didSet {
            callSetShadow()
        }
    }
    private var _cornerRadius: CGFloat = 0.9 {
        didSet {
            callSetCornerRadius()
        }
    }
    private var _borderColor: UIColor = UIColor.black {
        didSet {
            callSetBorder()
        }
    }
    private var _borderWidth: CGFloat = 4 {
        didSet {
            callSetBorder()
        }
    }
    private var _startColor: UIColor = UIColor.white {
        didSet {
            callSetGradient()
        }
    }
    private var _endColor: UIColor = UIColor.white {
        didSet {
            callSetGradient()
        }
    }
    private var _verticalGradient: Bool = false {
        didSet {
            callSetGradient()
        }
    }
    private var _angle: CGFloat = 180 {
        didSet {
            callSetGradient()
        }
    }
    private var _titleColor: UIColor = UIColor.black {
        didSet {
            setTitleColor()
        }
    }
    private var _titleColorPressed: UIColor = UIColor.white {
       didSet {
            setTitleColor()
        }
    }
    private var _startColorPressed: UIColor = UIColor.white {
        didSet {
            callSetGradient()
        }
    }
    private var _endColorPressed: UIColor = UIColor.white {
       didSet {
            callSetGradient()
        }
    }
    private func callSetShadow() {
        setShadow(
            with: self._shadowColor.cgColor,
            offset: self._shadowOffset,
            radius: self._shadowRadius,
            opacity: self._shadowOpacity)
    }
    private func callSetCornerRadius() {
        self.setCornerRadius(with: self._cornerRadius)
    }
    private func callSetBorder() {
        self.setBorder(color: self._borderColor, width: self._borderWidth)
    }
    // MARK: - Public inteface inspectable properties
    @IBInspectable var shadowColor: UIColor {
        get {
            return self._shadowColor
        }
        set {
            self._shadowColor = newValue
        }
    }
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self._shadowOffset
        }
        set {
            self._shadowOffset = newValue
        }
    }
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return self._shadowRadius
        }
        set {
            self._shadowRadius = newValue
        }
    }
    @IBInspectable var shadowOpacity: CGFloat {
        get {
            return self._shadowOpacity
        }
        set {
            self._shadowOpacity = newValue
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self._cornerRadius
        }
        set {
            self._cornerRadius = newValue
        }
    }
    @IBInspectable var borderColor: UIColor {
        get {
            return self._borderColor
        }
        set {
            self._borderColor = newValue
        }
    }
    @IBInspectable var borderWidth: CGFloat {
        get {
            return self._borderWidth
        }
        set {
            self._borderWidth = newValue
        }
    }
    func setShadow(with color: CGColor, offset: CGSize, radius: CGFloat, opacity: CGFloat) {
        self.layer.shadowColor = color
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = Float(opacity)
    }
    func setCornerRadius(with corner: CGFloat) {
        self.layer.cornerRadius = corner
    }
    func setBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }

}

extension UIButtonRound {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.setTouchesBeganBackgroundColors()
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.setTouchesEndedBackgroundColors()
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        self.setTouchesEndedBackgroundColors()
    }
}

extension UIButtonRound: GradientBackground {
    @IBInspectable var titleColor: UIColor {
        get {
            return self._titleColor
        }
        set {
            self._titleColor = newValue
        }
    }
    @IBInspectable var titleColorPressed: UIColor {
        get {
            return self._titleColorPressed
        }
        set {
            self._titleColorPressed = newValue
        }
    }
    @IBInspectable var startColorPressed: UIColor {
        get {
            return self._startColorPressed
        }
        set {
            self._startColorPressed = newValue
        }
    }
    @IBInspectable var endColorPressed: UIColor {
        get {
            return self._endColorPressed
        }
        set {
            self._endColorPressed = newValue
        }
    }
    @IBInspectable var startColor: UIColor {
        get {
            return self._startColor
        }
        set {
            self._startColor = newValue
        }
    }
    @IBInspectable var endColor: UIColor {
        get {
            return self._endColor
        }
        set {
            self._endColor = newValue
        }
    }
    @IBInspectable var verticalGradient: Bool {
        get {
            return self._verticalGradient
        }
        set {
            self._verticalGradient = newValue
        }
    }
    @IBInspectable var angle: CGFloat {
        get {
            return self._angle
        }
        set {
            self._angle = newValue
        }
    }
    func setTitleColor() {
        self.setTitleColor(self._titleColor, for: .normal)
        self.setTitleColor(self._titleColorPressed, for: .highlighted)
    }
    func callSetGradient() {
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]

        if verticalGradient {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        } else {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        }

        gradientLayer.cornerRadius = self.cornerRadius
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    func setTouchesBeganBackgroundColors() {
        self.gradientLayer.colors = [self._startColorPressed.cgColor, self._endColorPressed.cgColor]
    }
    func setTouchesEndedBackgroundColors() {
        self.gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    }
}

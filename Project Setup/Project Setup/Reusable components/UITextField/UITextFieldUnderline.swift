//
//  UITextFieldUnderline.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 10/31/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

class UITextFieldStyleUnderline: UITextField {
    let bottomLine: UIView = UIView()
    var placeholderAlpha: CGFloat = 0.3
    var placeholderColor: UIColor = ColorPalette.p1PrimaryMain
    var bottomLineMultiplier: CGFloat = 0.1
    override init(frame: CGRect) {
        super.init(frame: frame)
        commoninit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commoninit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commoninit()
    }
    private func commoninit() {
        self.addSubview(self.bottomLine)
        self.borderStyle = .none
        self.font = Font(.barlowCondensedRegular).headline
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        bottomLine.frame = CGRect(x: 0, y: bounds.height + frame.height * bottomLineMultiplier, width: frame.width, height: frame.height * -bottomLineMultiplier) // swiftlint:disable:this line_length
        self.bottomLine.backgroundColor = placeholderColor
        if let placeholder = placeholder {
            self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: placeholderColor.withAlphaComponent(placeholderAlpha)]) // swiftlint:disable:this line_length
        }
    }
}

//
//  UIButtonLink.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 10/31/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

@IBDesignable
class UIButtonLink: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        self.titleLabel?.font = Font(.barlowCondensedMedium).footnote
        self.titleLabel?.textColor = ColorPalette.t3TextMidtone
    }
}

//
//  UILabelMsgBoxTitle.swift
//  Love a frenchie
//
//  Created by Dimitar Stefanovski on 5/21/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

class UILabelLargeTitle: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    private func commonInit() {
        self.font = Font(.barlowCondensedSemiBold).largeTitle
        self.textColor = ColorPalette.t1TextMain
    }
}

class UILabelTitle1: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    private func commonInit() {
        self.font = Font(.barlowCondensedSemiBold).title1
        self.textColor = ColorPalette.t1TextMain
    }
}

class UILabelTitle2: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    private func commonInit() {
        self.font = Font(.barlowCondensedSemiBold).title2
        self.textColor = ColorPalette.t1TextMain
    }
}

class UILabelTitle3: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    private func commonInit() {
        self.font = Font(.barlowCondensedSemiBold).title3
        self.textColor = ColorPalette.t1TextMain
    }
}

class UILabelCallout: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    private func commonInit() {
        self.font = Font(.barlowCondensedRegular).callout
        self.textColor = ColorPalette.t3TextMidtone
    }
}

class UILabelHeadline: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    private func commonInit() {
        self.font = Font(.barlowCondensedSemiBold).headline
        self.textColor = ColorPalette.t3TextMidtone
    }
}

class UILabelBody: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    private func commonInit() {
        self.font = Font(.barlowCondensedRegular).body
        self.textColor = ColorPalette.t3TextMidtone
    }
}

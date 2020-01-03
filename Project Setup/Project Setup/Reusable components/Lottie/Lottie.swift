//
//  Lottie.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 10/19/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import Lottie

@IBDesignable
class LotieView: UIView {
    private var _animationFile: String = "some animation file"
    private var _repeatAnimation: Bool = false
    private var lottieAnimation: AnimationView!
    public func play() {
        self.lottieAnimation.play()
    }
    @IBInspectable
    var animationFile: String {
        get {
            return self._animationFile
        }
        set {
            self._animationFile = newValue
        }
    }
    @IBInspectable
    var repeatAnimation: Bool {
        get {
            return self._repeatAnimation
        }
        set {
            self._repeatAnimation = newValue
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    init(animationFile: String, frame: CGRect) {
        super.init(frame: frame)
        self._animationFile = animationFile
        self._repeatAnimation = true
        commonInit()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLottieView()
    }
    private func commonInit() {
        self.lottieAnimation = AnimationView(name: _animationFile)
        self.lottieAnimation.backgroundBehavior = .pauseAndRestore
        self.addSubview(self.lottieAnimation)
        self.lottieAnimation.play()
        if _repeatAnimation {
            self.lottieAnimation.loopMode = .loop
        } else {
            self.lottieAnimation.loopMode = .playOnce
        }
    }
    private func setupLottieView() {
        self.lottieAnimation.frame = self.bounds
    }
}

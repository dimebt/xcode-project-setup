//
//  PopUpMessage.swift
//  Love a frenchie
//
//  Created by Dimitar Stefanovski on 5/17/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

class PopUpMessageViewController: UIViewController {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var messageBoxView: UIView!
    @IBOutlet weak var messageBoxViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var titleMessage: UILabel!
    @IBOutlet weak var subtitleMessage: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var blurview: UIView!
    weak var coordinator: MainCoordinator?
    public var popUpMessage: PopUpMessage?
    public var buttonPressed: (() -> Void)?
    private var endTopConstraint: CGFloat!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPopUpMessage()
        setupUI()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.blurview.blurWith(duration: 0.4)
        self.endTopConstraint =
            (self.view.frame.height / 2) +
            (self.messageBoxView.frame.height / 2)
        UIView.animate(withDuration: 0.4,
                       delay: 0,
                       usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 0.4,
                       options: .curveEaseOut,
                       animations: {
            self.messageBoxViewTopConstraint.constant = self.endTopConstraint
            self.view.layoutIfNeeded()
        }) { (_) in // swiftlint:disable:this multiple_closures_with_trailing_closure
            print("Finished")
        }
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        handleDismiss()
    }
    @IBAction func closePressed(_ sender: UIButton) {
        handleDismissWithoutExecClosure()
    }
    private func setupPopUpMessage() {
        self.titleMessage.text = self.popUpMessage?.title
        self.subtitleMessage.text = self.popUpMessage?.subtitle
        self.icon.image = self.popUpMessage?.icon
        switch self.popUpMessage?.buttons {
        case .okbtn:
            self.button.setTitle("OK", for: .normal)
        case .yes:
            self.button.setTitle("YES", for: .normal)
        default:
            self.button.setTitle(self.popUpMessage?.buttons.rawValue, for: .normal)
        }
    }
    private func setupUI() {
        self.messageBoxView.layer.cornerRadius = 10
        self.messageBoxView.layer.shadowColor = UIColor.black.cgColor
        self.messageBoxView.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.messageBoxView.layer.shadowRadius = 10
        self.messageBoxView.layer.shadowOpacity = 0.5
    }
    private func hideMessageBox() {
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 0.4, options: .curveEaseOut, animations: {
            self.messageBoxViewTopConstraint.constant = -60
            self.view.layoutIfNeeded()
        }) { (isFinished) in // swiftlint:disable:this multiple_closures_with_trailing_closure unused_closure_parameter
            print("Finished")
            self.buttonPressed?()
            self.dismiss(animated: false, completion: nil)
        }
    }
    private func hideMessageBoxWithoutClosure() {
        UIView.animate(withDuration: 0.4, delay: 0,
                       usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 0.4,
                       options: .curveEaseOut,
                       animations: {
            self.messageBoxViewTopConstraint.constant = -60
            self.view.layoutIfNeeded()
        }) { (_) in // swiftlint:disable:this multiple_closures_with_trailing_closure
            print("Finished")
            self.dismiss(animated: false, completion: nil)
        }
    }
    private func handleDismiss() {
        self.blurview.removeBlurEffect {
            self.hideMessageBox()
        }
    }
    private func handleDismissWithoutExecClosure() {
        self.blurview.removeBlurEffect {
            self.hideMessageBoxWithoutClosure()
        }
    }
}

enum PopUpMessageButton: String {
    case okbtn
    case yes
    case back
    case cancel
    case login
}

struct PopUpMessage {
    let title: String
    let subtitle: String
    let icon: UIImage
    let buttons: PopUpMessageButton
}

extension UIViewController {
    func showPopUpMessage(popUpMessage: PopUpMessage) {
        let popUpViewController = PopUpMessageViewController(nibName: "PopUpMessage", bundle: nil)
        popUpViewController.modalPresentationStyle = .overCurrentContext
        popUpViewController.popUpMessage = popUpMessage
        self.parent?.present(popUpViewController, animated: false) {
            print("popUpViewController presented")
        }
    }
}

extension UIView {
    func blurWith(duration: TimeInterval) {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurEffectView = UIVisualEffectView(effect: nil)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        self.addSubview(blurEffectView)
        UIView.animate(withDuration: duration) {
            blurEffectView.effect = blurEffect
            blurEffectView.alpha = 0.7
            self.layoutIfNeeded()
        }
    }
    func removeBlurEffect(_ completion: @escaping (() -> Void)) {
        let blurredEffectViews = self.subviews.filter { $0 is UIVisualEffectView }
        blurredEffectViews.forEach { blurView in
            UIView.animate(withDuration: 0.4, animations: {
                guard let blur = blurView as? UIVisualEffectView else { return }
                blur.effect = nil
                self.layoutIfNeeded()
            }) { (isFinished) in // swiftlint:disable:this multiple_closures_with_trailing_closure
                if isFinished {
                    blurView.removeFromSuperview()
                    completion()
                }
            }
        }
    }
}

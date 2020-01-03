//
//  LoadingViewController.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 11/28/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

extension UIViewController {
    func showLoader() {
        let loadingViewController = LoadingViewController()
        loadingViewController.modalPresentationStyle = .fullScreen
        self.present(loadingViewController, animated: false, completion: nil)
    }
    func hideLoader() {
        if let loader = self.presentedViewController as? LoadingViewController {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                loader.dismiss(animated: true, completion: nil)
            }
        }
    }
}

class LoadingViewController: UIViewController {
    var loader: LotieView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupLoader()
    }
    private func setupLoader() {
        let loaderWidth = self.view.bounds.width / 3
        let loaderSize = CGSize(width: loaderWidth, height: loaderWidth)
        loader = LotieView(animationFile: "2268-loading", frame: CGRect(origin: .zero, size: loaderSize))
        loader.center = self.view.center
        self.view.addSubview(loader)
        loader.play()
    }
}

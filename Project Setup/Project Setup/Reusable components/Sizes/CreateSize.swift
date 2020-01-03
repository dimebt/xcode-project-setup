//
//  CreateSize.swift
//  SMS Commands
//
//  Created by Dimitar Stefanovski on 10/24/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit
import Device

protocol CreateSize {
    func calculate() -> CGSize
}

class CollectionViewSizes: CreateSize {
    private init() { }
    public static let shared = CollectionViewSizes()
    func calculate() -> CGSize {
        switch Device.size() {
        case .unknownSize:
            return CGSize(width: 370, height: 220)
        case .screen3_5Inch:
            return CGSize(width: 200, height: 100)
        case .screen4Inch:
            return CGSize(width: 340, height: 220)
        case .screen4_7Inch:
            return CGSize(width: 350, height: 220)
        case .screen5_5Inch:
            return CGSize(width: 380, height: 220)
        case .screen5_8Inch:
            return CGSize(width: 380, height: 220)
        case .screen6_1Inch:
            return CGSize(width: 380, height: 220)
        case .screen6_5Inch:
            return CGSize(width: 400, height: 300)
        case .screen7_9Inch:
            return CGSize(width: 500, height: 350)
        case .screen9_7Inch:
            return CGSize(width: 640, height: 240)
        case .screen10_2Inch:
            return CGSize(width: 500, height: 350)
        case .screen10_5Inch:
            return CGSize(width: 394, height: 250)
        case .screen11Inch:
            return CGSize(width: 390, height: 250)
        case .screen12_9Inch:
            return CGSize(width: 492, height: 260)
        }
    }
}

class CollectionViewCommandsSizes: CreateSize {
    private init() { }
    public static let shared = CollectionViewCommandsSizes()
    func calculate() -> CGSize {
        switch Device.size() {
        case .unknownSize:
            return CGSize(width: 760, height: 140)
        case .screen3_5Inch:
            return CGSize(width: 200, height: 100)
        case .screen4Inch:
            return CGSize(width: 330, height: 140)
        case .screen4_7Inch:
            return CGSize(width: 350, height: 130)
        case .screen5_5Inch:
            return CGSize(width: 380, height: 130)
        case .screen5_8Inch:
            return CGSize(width: 380, height: 130)
        case .screen6_1Inch:
            return CGSize(width: 380, height: 140)
        case .screen6_5Inch:
            return CGSize(width: 400, height: 240)
        case .screen7_9Inch:
            return CGSize(width: 400, height: 240)
        case .screen9_7Inch:
            return CGSize(width: 700, height: 150)
        case .screen10_2Inch:
            return CGSize(width: 400, height: 240)
        case .screen10_5Inch:
            return CGSize(width: 760, height: 150)
        case .screen11Inch:
            return CGSize(width: 800, height: 170)
        case .screen12_9Inch:
            return CGSize(width: 950, height: 170)
        }
    }
}

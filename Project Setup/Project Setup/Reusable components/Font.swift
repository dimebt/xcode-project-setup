//
//  Font.swift
//  DSFont
//
//  Created by Dimitar Stefanovski on 5/15/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit
import Device

func printFontNames() {
    UIFont.familyNames.forEach({ familyName in
        let fontNames = UIFont.fontNames(forFamilyName: familyName)
        print(familyName, fontNames)
    })
}

enum FontName: String {
    case appleDefaultFont = "AppleDefaultFont"
    case barlowCondensedMedium = "BarlowCondensed-Medium"
    case barlowCondensedLight = "BarlowCondensed-Light"
    case barlowCondensedExtraLight = "BarlowCondensed-ExtraLight"
    case barlowCondensedSemiBold = "BarlowCondensed-SemiBold"
    case barlowCondensedRegular = "BarlowCondensed-Regular"
}

enum FontStyle: String {
    case largeTitle = "LargeTitle"
    case title1 = "Title 1"
    case title2 = "Title 2"
    case title3 = "Title 3"
    case headline = "Headline"
    case body = "Body"
    case callout = "Callout"
    case subhead = "Subhead"
    case footnote = "Footnote"
    case caption1 = "Caption 1"
    case caption2 = "Caption 2"
}
struct Font {
    var largeTitle: UIFont?
    var title1: UIFont?
    var title2: UIFont?
    var title3: UIFont?
    var headline: UIFont?
    var body: UIFont?
    var callout: UIFont?
    var subhead: UIFont?
    var footnote: UIFont?
    var caption1: UIFont?
    var caption2: UIFont?
    private var largeTitleFontSizes: [CGFloat] = [33.0, 33.0, 33.0, 33.0, 33.0, 33.0, 33, 33.0, 33.0, 36.0, 38.0, 38.0]
    private var title1FontSizes: [CGFloat] = [27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 27.0, 30.0, 32.0, 32.0]
    private var title2FontSizes: [CGFloat] = [21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 21.0, 24.0, 26.0, 26.0]
    private var title3FontSizes: [CGFloat] = [19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 19.0, 22.0, 23.0, 23.0]
    private var headlineFontSizes: [CGFloat] = [16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 20.0, 20.0, 20.0]
    private var bodyFontSizes: [CGFloat] = [16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 19.0, 19.0, 19.0]
    private var calloutFontSizes: [CGFloat] = [15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 18.0, 18.0, 18.0]
    private var subheadFontSizes: [CGFloat] = [14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 14.0, 15.0, 15.0, 15.0]
    private var footnoteFontSizes: [CGFloat] = [12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 12.0, 14.0, 14.0, 14.0]
    private var caption1FontSizes: [CGFloat] = [11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 12.0, 12.0, 12.0]
    private var caption2FontSizes: [CGFloat] = [11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0, 11.0]
    init(_ fontName: FontName) {
        self.setFontNames(fontName: fontName)
    }
    mutating private func setFontSize(fontName: FontName, at index: Int) {
        if fontName == .appleDefaultFont {
            self.largeTitle = UIFont.systemFont(ofSize: self.largeTitleFontSizes[index])
            self.title1 = UIFont.systemFont(ofSize: self.title1FontSizes[index])
            self.title2 = UIFont.systemFont(ofSize: self.title2FontSizes[index])
            self.title3 = UIFont.systemFont(ofSize: self.title3FontSizes[index])
            self.headline = UIFont.systemFont(ofSize: self.headlineFontSizes[index])
            self.body = UIFont.systemFont(ofSize: self.bodyFontSizes[index])
            self.callout = UIFont.systemFont(ofSize: self.calloutFontSizes[index])
            self.subhead = UIFont.systemFont(ofSize: self.subheadFontSizes[index])
            self.footnote = UIFont.systemFont(ofSize: self.footnoteFontSizes[index])
            self.caption1 = UIFont.systemFont(ofSize: self.caption1FontSizes[index])
            self.caption2 = UIFont.systemFont(ofSize: self.caption2FontSizes[index])
        } else {
            self.largeTitle = UIFont(name: fontName.rawValue, size: self.largeTitleFontSizes[index])
            self.title1 = UIFont(name: fontName.rawValue, size: self.title1FontSizes[index])
            self.title2 = UIFont(name: fontName.rawValue, size: self.title2FontSizes[index])
            self.title3 = UIFont(name: fontName.rawValue, size: self.title3FontSizes[index])
            self.headline = UIFont(name: fontName.rawValue, size: self.headlineFontSizes[index])
            self.body = UIFont(name: fontName.rawValue, size: self.bodyFontSizes[index])
            self.callout = UIFont(name: fontName.rawValue, size: self.calloutFontSizes[index])
            self.subhead = UIFont(name: fontName.rawValue, size: self.subheadFontSizes[index])
            self.footnote = UIFont(name: fontName.rawValue, size: self.footnoteFontSizes[index])
            self.caption1 = UIFont(name: fontName.rawValue, size: self.caption1FontSizes[index])
            self.caption2 = UIFont(name: fontName.rawValue, size: self.caption2FontSizes[index])
        }
    }
    mutating private func setFontNames(fontName: FontName) {
        switch Device.size() {
        case .unknownSize:
            self.setFontSize(fontName: fontName, at: 0)
        case .screen3_5Inch:
            self.setFontSize(fontName: fontName, at: 1)
        case .screen4Inch:
            self.setFontSize(fontName: fontName, at: 2)
        case .screen4_7Inch:
            self.setFontSize(fontName: fontName, at: 3)
        case .screen5_5Inch:
            self.setFontSize(fontName: fontName, at: 4)
        case .screen5_8Inch:
            self.setFontSize(fontName: fontName, at: 5)
        case .screen6_1Inch:
            self.setFontSize(fontName: fontName, at: 6)
        case .screen6_5Inch:
           self.setFontSize(fontName: fontName, at: 7)
        case .screen7_9Inch:
            self.setFontSize(fontName: fontName, at: 8)
        case .screen9_7Inch:
            self.setFontSize(fontName: fontName, at: 9)
        case .screen10_2Inch:
            self.setFontSize(fontName: fontName, at: 10)
        case .screen10_5Inch:
            self.setFontSize(fontName: fontName, at: 10)
        case .screen11Inch:
            self.setFontSize(fontName: fontName, at: 11)
        case .screen12_9Inch:
            self.setFontSize(fontName: fontName, at: 11)
        }
    }
}

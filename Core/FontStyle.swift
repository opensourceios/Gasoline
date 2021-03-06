//
//  FontStyle.swift
//  Gasoline
//
//  Created by Stefan Herold on 10.07.17.
//  Copyright © 2017 Stefan Herold. All rights reserved.
//

import UIKit

enum FontStyle {

    case title1, title2, title3, headline, subHeadline, body, callout, footnote, caption1, caption2

    var textStyle: UIFontTextStyle {

        switch self {
        case .title1: return .title1
        case .title2: return .title2
        case .title3: return .title3
        case .headline: return .headline
        case .subHeadline: return .subheadline
        case .body: return .body
        case .callout: return .callout
        case .footnote: return .footnote
        case .caption1: return .caption1
        case .caption2: return .caption2
        }
    }

    var font: UIFont {

        return UIFont.preferredFont(forTextStyle: textStyle)
    }

    var normalStyleAttributes: [NSAttributedStringKey: Any] {

        return [
            .font: font,
            .foregroundColor: UIColor.darkGray
        ]
    }

    func normalStyleAttributedString(_ string: String) -> NSAttributedString {

        return NSAttributedString(string: string, attributes: normalStyleAttributes)
    }

    var lightStyleAttributes: [NSAttributedStringKey: Any] {

        return [
            .font: font,
            .foregroundColor: UIColor.lightGray
        ]
    }

    func lightStyleAttributedString(_ string: String) -> NSAttributedString {

        return NSAttributedString(string: string, attributes: lightStyleAttributes)
    }
}

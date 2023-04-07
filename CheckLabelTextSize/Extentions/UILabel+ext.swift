//
//  UILabel+ext.swift
//  CheckLabelTextSize
//
//  Created by Gualtiero Frigerio on 07/04/23.
//

import Foundation
import UIKit

extension UILabel {
    func textDoesntFit() -> Bool {
        guard let text, let font else { return false }
        let actualFont = adjustsFontSizeToFitWidth ? font.withSize(font.pointSize * minimumScaleFactor) : font
        let size = text.size(withAttributes: [.font: actualFont])
        return size.width > frame.size.width || size.height > frame.size.height
    }
}

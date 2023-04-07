//
//  UIView+ext.swift
//  CheckLabelTextSize
//
//  Created by Gualtiero Frigerio on 07/04/23.
//

import Foundation
import UIKit

extension UIView {
    func getAllSubviews<T: UIView> (ofType type: T.Type) -> [T] {
        var all = subviews.compactMap { $0 as? T}
        for sub in subviews {
            all.append(contentsOf: sub.getAllSubviews(ofType: type))
        }
        return all
    }
    
    func getAllLabels() -> [UILabel] {
        var all = subviews.compactMap { $0 as? UILabel }
        for sub in subviews {
            if let button = sub as? UIButton, let label = button.titleLabel {
                all.append(label)
            } else {
                all.append(contentsOf: sub.getAllLabels())
            }
        }
        return all
    }
}


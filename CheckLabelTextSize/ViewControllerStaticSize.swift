//
//  ViewControllerStaticSize.swift
//  CheckLabelTextSize
//
//  Created by Gualtiero Frigerio on 16/04/23.
//

import UIKit

class ViewControllerStaticSize: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }

    private func setupUI() {
        let label = UILabel()
        label.text = Constants.veryLongText
        label.font = .systemFont(ofSize: 24)
        view.addSubview(label)
        label.horizontalMidSizeCentered()
    }
}

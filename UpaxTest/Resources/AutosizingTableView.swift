//
//  AutosizingTableView.swift
//  UpaxTest
//
//  Created by Mario on 16/01/22.
//

import UIKit

final class AutosizingTableView: UITableView {
    
    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return .init(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}

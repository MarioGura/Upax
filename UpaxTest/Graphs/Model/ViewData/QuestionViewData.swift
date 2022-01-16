//
//  QuestionViewData.swift
//  UpaxTest
//
//  Created by Mario on 16/01/22.
//

import SwiftUI

struct QuestionViewData {
    let question: String
    let options: [OptionsViewData]
}

struct OptionsViewData {
    let color: UIColor
    let option: String
    let percent: Int
}

//
//  Question.swift
//  UpaxTest
//
//  Created by Mario on 16/01/22.
//

struct Question {
    let total: Int
    let text: String
    let chartData: [ChartData]
}

struct ChartData {
    let text: String
    let percetnage: Int
}

extension Question {
    func mapToViewData() -> QuestionViewData {
        return QuestionViewData(question: text,
                                options: chartData.map { $0.mapToViewData() })
    }
}

extension ChartData {
    func mapToViewData() -> OptionsViewData {
        OptionsViewData(color: .clear,
                        option: text,
                        percent: percetnage)
    }
}

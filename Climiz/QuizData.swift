//
//  QuizData.swift
//  Climiz
//
//  Created by scholar on 03/08/2023.
//

import Foundation

class QuizScores: ObservableObject {
    @Published var howPolluting = 0
    @Published var recycling = 0
    @Published var water = 0
    @Published var howOften = 0
    @Published var shopping = 0
    @Published var totalScore = 0
}

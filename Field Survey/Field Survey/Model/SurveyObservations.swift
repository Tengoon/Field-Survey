//
//  SurveyObservations.swift
//  Field Survey
//
//  Created by Andrew Brown on 11/13/20.
//

import Foundation

enum Classification: String, Codable {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
}

struct Observation: Codable {
    var classification: Classification
    var title: String
    var description: String
    var date: Date
}

struct SurveyObservations: Codable {
    var status: String
    var observations: [Observation]
}

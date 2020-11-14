//
//  SurveyLoader.swift
//  Field Survey
//
//  Created by Andrew Brown on 11/13/20.
//

import Foundation

class SurveyLoader {
    
    class func load(jsonFileName: String) -> SurveyObservations? {
            var surveyObservations: SurveyObservations?
            let jsonDecoder = JSONDecoder()
            jsonDecoder.dateDecodingStrategy = .iso8601
            
            if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
                let jsonData = try? Data(contentsOf: jsonFileUrl) {
                surveyObservations = try? jsonDecoder.decode(SurveyObservations.self, from: jsonData)
            }
            
            return surveyObservations
        }
}

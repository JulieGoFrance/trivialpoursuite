//
//  Trivial.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import Foundation
import SwiftUI
struct Trivial : Decodable{

//    init() {
//        // initialise the stored properties here.
//    }
//
//
    var results : [Result]
//
    struct Result :  Identifiable, Decodable{
//
        var id  : UUID{
            UUID()
        }
        var category : String
        var type : String
        var difficulty : String
        var question : String
        var correctAnswer : String
        var incorrectAnswers : [String]

        var formattedQuestion : AttributedString {
            do {return  try AttributedString(markdown :question )}
            catch {
                print("error formating question \(error)")
                return ""
            }
        }

    var answers : [Answer] {
            do {
                let corrects =  [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrects = try incorrectAnswers.map{
                    answer in Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                        }

                let allAnswers = corrects + incorrects
                return allAnswers.shuffled()
            }

            catch {
                print("error setting \(error)")
                return []
            }
        }
    }
}

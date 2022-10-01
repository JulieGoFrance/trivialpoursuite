//
//  Answer.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import Foundation
struct Answer : Identifiable {
    var id = UUID()
    var text : AttributedString
    var isCorrect : Bool
    
    
}

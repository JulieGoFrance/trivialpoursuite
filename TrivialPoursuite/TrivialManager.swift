//
//  TrivialManager.swift
//  TrivialPoursuite
//
//  Created by User on 16/09/2022.
//

import Foundation
import SwiftUI

class TriviaManager {

    var truc = "t"
    
}


//// old trivial manager
///
///
/////private(set) var trivia : [Trivial.Result] =  []
//@Published private(set) var length = 0
//@Published private(set) var index = 0
//@Published private(set) var reachedEnd2 = false
//                        var reachedEnd = false
//@Published private (set) var answerSelected = false
//@Published private (set) var question : AttributedString = ""
//@Published private (set) var answerChoices : [Answer] = []
//@Published private (set) var progress : CGFloat = 0.00
//@Published private (set) var score = 0
//@Published private (set) var test = "Test Trivial Manager published"
//var test2 = "Test Trivialmanager non published"
//
//
//init() {
//    Task.init {
//        await fetchTrivial()
//    }
//}
//
//func fetchTrivial () async {
//    guard let url = URL(string: "https://opentdb.com/api.php?amount=10") else {
//        fatalError("Misssing Url")
//    }
//    
//    let urlRequest = URLRequest(url: url)
//    do {
//       let (data, response) = try await URLSession.shared.data(for: urlRequest)
//        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError(" eroor while fetching data")}
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
//        
//        let decodedData = try decoder.decode(Trivial.self, from: data)
//        
//        DispatchQueue.main.async {
//            self.score = 0
//            self.score = 0
//            self.progress = 0.0
//            self.reachedEnd = false
//            self.trivia = decodedData.results
//            self.length = self.trivia.count
//            self.setQuestion()
//        }
//    }
//    catch {
//        print("error fetchin trivia : \(error)")
//    }
//    
//}
//
//func goToNextQuestion(){
//    if index+1 > length {
//        index+=1
//        setQuestion()
//    }else {
//        reachedEnd = true
//    }
//    
//}
//
//func setQuestion(){
//    answerSelected = false
//    progress = CGFloat(Double((index+1)) / Double(length) * 350)
//    
//    if index < length {
//        let currentTriviaQuestion = trivia[index]
//        question = currentTriviaQuestion.formattedQuestion
//        answerChoices = currentTriviaQuestion.answers
//   
//        
//    }
//}
//
//func selectAnswer(answer : Answer) {
//    answerSelected = true
//    if answer.isCorrect {
//        score = score + 1
//        
//    }
//}
//

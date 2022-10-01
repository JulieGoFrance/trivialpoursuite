//
//  AnswerRow.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import SwiftUI



struct AnswerRow: View {
    
    @EnvironmentObject var trivialData : TrivialData
    var answer : Answer
    @State private var isSelected = false
    @State var helloWorld = "hello"
    var green = Color("CustomGreen")
    var red = Color("CustomRed")
    
    var body: some View {
        
        HStack (spacing: 20) {
            
            Image(systemName: "circle.fill").font(.caption)
            Text(answer.text).bold()
            
        }
        if isSelected {
            
            HStack{
               
              Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.seal.fill" : "x.circle.fill").foregroundColor(answer.isCorrect ? green : red)
              }.padding().frame(maxWidth: .infinity, alignment: .leading).foregroundColor( trivialData.answerSelected ? (isSelected ? Color("AccentColor") : .gray) : Color("AccentColor"))
                    .background(.white)
                    .cornerRadius(10)
                    .onTapGesture{
                      
                        if (!trivialData.answerSelected) {
                            isSelected = true
                            trivialData.selectAnswer(answer: answer)
                        }
                        
                     //   Text(trivialData.testing)
                     
                }
        }
//        if trivialData.answerSelected {
////            isSelected = true
//            HStack {
//                Text("answer selected")
//            }
//
//        }
        
      
        
   

            
            
        }
    }
//}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "bobby", isCorrect: false)).environmentObject(TrivialData())
    }
}

//

//HStack(spacing:20){
//
//    Image(systemName: "circle.fill").font(.caption)
//    Text(answer.text).bold()
//
////    Text(trivialData.testing) testing
//
//
//
//    if isSelected {
//        Spacer()
//
//
//
//    }
//if !trivialData.answerSelected {
//    isSelected = true
//
//
//    trivialData.selectAnswer(answer: answer)
////}
//HStack (spacing : 20) {
//
//
//        Text("ee")
//
//
//}.padding()
//    .frame(maxWidth: .infinity, alignment: .leading)
//    .foregroundColor( trivialData.answerSelected ? (isSelected ? Color("AccentColor") : .gray) : Color("AccentColor"))
//    .background(.white)
//    .cornerRadius(10)
//    .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
//    .onTapGesture
//

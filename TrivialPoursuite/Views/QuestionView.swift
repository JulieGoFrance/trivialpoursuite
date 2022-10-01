//
//  QuestionView.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import SwiftUI

struct QuestionView: View {
    @StateObject var trivialData = TrivialData()
    @State var notSelected = true
    
    var fontValueStandard =  CGFloat(12)
   
   
    var body: some View {
        VStack(spacing : 40){

 
            HStack {
                Text("Trivial  Game").lilacTitle()
                Spacer()
                Text("\(trivialData.index + 1) out of \(trivialData.length)").easyTitle()
            }
            
            ProgressBar(progress: trivialData.progress)
            
            VStack(alignment: .leading, spacing: 20){
                
                Text(trivialData.question).font(.system(size: fontValueStandard))
                
                
                ForEach (trivialData.answerChoices, id : \.id){
                    answer in AnswerRow(answer: answer).environmentObject(TrivialData()).font(.system(size: fontValueStandard))
                }
      
//                if trivialData.answerSelected{
//                    Text("selected trivial")
//                }else {
//                    Text("not selected trivia")
//                }
                Text(trivialData.testing)
                Button {
                    trivialData.goToNextQuestion()
                    
                  
                } label : {
                  
                    PrimaryButton(text: "next", background: trivialData.answerSelected ? Color("AccentColor") : Color("CustomLigthGray"))
                }.disabled(!trivialData.answerSelected)

            }
       
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("SecondaryColor"))
            .navigationBarHidden(true)
    }
}
struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView().environmentObject(TrivialData())
    }
}


//if notSelected {
//    Text("not selected")
//}else {
//    Text("select")
//}


//                AnswerRow(answer: Answer(text: "No", isCorrect: false)).environmentObject(TriviaManager())
//                AnswerRow(answer: Answer(text: "Yes", isCorrect: true)).environmentObject(TriviaManager())
//  PrimaryButton(text: "next")
//Text("test trivia data is selected. " + String(notSelected))
//                if (trivialData.answerSelected){
//                   $isSelected = true
//                }
//                else {
//                    $isSelected = false
//                }
//





//
//  QuestionView.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var trivialData : TrivialData
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


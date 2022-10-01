//
//  TrivialView.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import SwiftUI

struct TrivialView: View {
    
    @StateObject var trivialData = TrivialData()
 
    var body: some View {
        
      
        
       
            
            VStack( spacing : 20) {

                Text("Trivial Poursuite").lilacTitle()

                if trivialData.reachedEnd {
                    VStack (spacing : 20){
                        
                        Text(" Votre score est de \(trivialData.score) sur \(trivialData.length)")
                        
                        Button {
                            Task.init {
                                await trivialData.fetchTrivial()
                                }
                            } label : { PrimaryButton(text: "Recommencer ")
                            }
                        
                        }.foregroundColor(Color("AccentColor"))
                        .padding().frame(maxWidth: .infinity,maxHeight: .infinity).background(Color("CustomLigthGray"))
                    
                    
                    
                    
                } else {
                    QuestionView().environmentObject(trivialData)
                    
                   
                }
                
            }.foregroundColor(Color("AccentColor")).padding().frame( maxWidth: .infinity, maxHeight: .infinity).background(Color("SecondaryColor"))
            

           

    }
}

struct TrivialView_Previews: PreviewProvider {
    static var previews: some View {
        TrivialView().environmentObject(TrivialData())
    }
}



//    var zeScore  = trivialManager.score
// @EnvironmentObject var trivialManager : TriviaManager
//     if trivialManager.reachedEnd {
    
//        if (trivialManager.reachedEnd == true) {
//            print("test If")
//        } else {
//            print("test else")
//        } .environmentObject(TriviaManager())


//                Text("votre score est \(trivialManager.score)")
//
//                if trivialManager.reachedEnd2 {
//                    Text("if")
//                } else {
//                    Text("else")
//                }
//
              
           //     print(trivialManager.reachedEnd)
              // trivialManager.score
    
                
             //   Text(trivialManager.test)
//                Text("\(zeScore)")
               // Text("Bravo, vous avez fini")
                
                //Text("\(theScore)")
                
//                Text(" ze score",\(theScore)")
               
//                Text("votre score est \(trivialManager.score) sur \(trivialManager.length)")
//
               
//  @EnvironmentObject var trivialManager : TriviaManager

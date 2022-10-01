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



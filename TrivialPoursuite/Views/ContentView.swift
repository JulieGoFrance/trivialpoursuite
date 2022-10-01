//
//  ContentView.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import SwiftUI
// 55 minutes

//https://www.youtube.com/watch?v=xEqP7jbU0x0 

struct ContentView: View {
  //  @EnvironmentObject var trivialManager : TriviaManager
   // @StateObject var trivialData = TrivialData()
   
    @StateObject var trivialData = TrivialData()
    var body: some View {
        
        NavigationView{
            
            VStack(spacing : 40){
                
                    VStack (spacing : 20){
                    
                        Text("Trivial Poursuite").lilacTitle()
                       
                    
                        Text("Prêt.e à tester vos connaissances ? ").foregroundColor(Color("AccentColor"))

                        NavigationLink(destination:  TrivialView(), label: { PrimaryButton(text: "Commencer le jeu")})
                    
                    }
                
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(Color("SecondaryColor"))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}

//
//  TriviaDataView.swift
//  TrivialPoursuite
//
//  Created by User on 19/09/2022.
//

import SwiftUI
import Foundation

struct TriviaDataView: View {
    
    @StateObject var trivialData = TrivialData()
    var body: some View {
        VStack {
            Text("Trivial data score \(trivialData.score)test")
        }.environmentObject(trivialData)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TriviaDataView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaDataView()
    }
}

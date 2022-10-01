//
//  SampleView.swift
//  TrivialPoursuite
//
//  Created by User on 19/09/2022.
//

import SwiftUI

struct SampleView: View {
    
    @EnvironmentObject var trivialData : TrivialData
    var body: some View {
        
       Text("dfdf")
      
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView().environmentObject(TrivialData())
    }
}

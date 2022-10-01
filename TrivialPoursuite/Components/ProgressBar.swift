//
//  ProgressBar.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import SwiftUI

struct ProgressBar: View {
    var progress : CGFloat
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle().frame(maxWidth: 350, maxHeight: 4).foregroundColor(Color("CustomLigthGray")).cornerRadius(10)
            
            Rectangle().frame(maxWidth: progress, maxHeight: 4).foregroundColor(Color("AccentColor")).cornerRadius(10)
            
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}

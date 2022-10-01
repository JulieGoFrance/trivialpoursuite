//
//  Extensions.swift
//  TrivialPoursuite
//
//  Created by User on 14/09/2022.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
    
    func easyTitle() -> some View {
        self
        .font(.subheadline)
        .fontWeight(.bold)
        .foregroundColor(Color("AccentColor"))
    }
    
    
    func questionFont() -> some View {
        self
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.gray)
    }
    
    
    
    
}

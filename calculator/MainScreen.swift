//
//  MainScreen.swift
//  calculator
//
//  Created by Terka on 21.03.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("výsledek je moooc dlouhý")
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size: 88, weight: .light))
                    .lineLimit(1)
                    .minimumScaleFactor(0.2)
            }
            Klavesnice()
        }
        .padding()
        .background(.black)
        
    }
}


struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

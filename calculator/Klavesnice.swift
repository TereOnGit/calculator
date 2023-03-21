//
//  Klavesnice.swift
//  calculator
//
//  Created by Terka on 21.03.2023.
//

import SwiftUI

struct Klavesnice: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Key("AC")
                    .foregroundColor(.lightGray)
                Key("+/-")
                    .foregroundColor(.lightGray)
                Key("%")
                    .foregroundColor(.lightGray)
                Key("÷")
                    .foregroundColor(.yellow)
            }
            HStack {
                Key("1")
                    .foregroundColor(.gray)
                Key("2")
                    .foregroundColor(.gray)
                Key("3")
                    .foregroundColor(.gray)
                Key("x")
                    .foregroundColor(.yellow)
            }
            HStack {
                Key("4")
                    .foregroundColor(.gray)
                Key("5")
                    .foregroundColor(.gray)
                Key("6")
                    .foregroundColor(.gray)
                Key("-")
                    .foregroundColor(.yellow)
            }
            HStack {
                Key("7")
                    .foregroundColor(.gray)
                Key("8")
                    .foregroundColor(.gray)
                Key("9")
                    .foregroundColor(.gray)
                Key("+")
                    .foregroundColor(.yellow)
            }
            HStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(.gray)
                Key(",")
                    .foregroundColor(.gray)
                Key("=")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct Key: View {
    let text: String
    
    init(_ text: String = "") {
        self.text = text
    }
    
    var body: some View {
        Button(action: {
            print(text)
        }, label: {
            ZStack {
                Circle()
                    .frame(minWidth: 80, maxWidth: 80, minHeight: 80, maxHeight: 80)
                Text(text)
                    .foregroundColor(.white)
                    .font(Font.largeTitle)
            }
        }
        )
        
    }
}

struct Klavesnice_Previews: PreviewProvider {
    static var previews: some View {
        Klavesnice()
    }
}

extension Color {
    static let lightGray = Color(red: 0.85, green: 0.85, blue: 0.85)
}

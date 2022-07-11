//
//  NormalView.swift
//  RandomNumberGenerator41
//
//  Created by cmStudent on 2022/07/11.
//

import Foundation
import SwiftUI

struct NormalView: View {
    @State var randomNumber = 1
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(randomNumber)")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width/2)
                .padding()
            Button(action: {
                print("ボタンが押されたよ")
                randomNumber = Int.random(in: 1...6)
            }) {
                Text("サイコロを振る")
                    .font(.title)
            }
            .padding()
            Text("結果：\(randomNumber)")
                .font(.title)
        }
    }
}

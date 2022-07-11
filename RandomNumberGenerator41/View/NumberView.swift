//
//  NumberView.swift
//  RandomNumberGenerator41
//
//  Created by cmStudent on 2022/07/11.
//

import Foundation
import SwiftUI

struct NumberView: View {
    @StateObject var viewModel = NumberViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(viewModel.randomNumber)")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width/2)
                .padding()
            Button(action: {
                print("ボタンが押されたよ")
                viewModel.createNumber()
            }) {
                Text("サイコロを振る")
                    .font(.title)
            }
            .padding()
            Text("結果：\(viewModel.randomNumber)")
                .font(.title)
        }
    }
}

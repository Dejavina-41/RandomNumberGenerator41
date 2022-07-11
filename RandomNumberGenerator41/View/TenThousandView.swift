//
//  TenThousand.swift
//  RandomNumberGenerator41
//
//  Created by cmStudent on 2022/07/11.
//

import Foundation
import SwiftUI

struct TenThousandView: View {
    @StateObject var viewModel = TenThousandViewModel()
    
    var body: some View {
        VStack {
            Button(action: {
                print("ボタンが押されたよ")
                viewModel.createNumber()
            }) {
                Text("乱数を発生させる")
                    .font(.title)
            }
            .padding()
            Text("結果：\(viewModel.randomNumber)")
                .font(.title)
        }
    }
}

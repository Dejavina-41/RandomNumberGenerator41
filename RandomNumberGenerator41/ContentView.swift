//
//  ContentView.swift
//  RandomNumberGenerator41
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NormalView()
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("ノーマルVer.")
                }
            NumberView()
                .tabItem {
                    Image(systemName: "2.circle.fill")
                    Text("CombineVer.")
                }
            TenThousandView()
                .tabItem {
                    Image(systemName: "3.circle.fill")
                    Text("10000までVer.")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

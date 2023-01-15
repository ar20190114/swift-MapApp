//
//  ContentView.swift
//  MyMapApp
//
//  Created by ryotaban on 2023/01/15.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var inputText: String = ""
    @State var dispSearchKey: String = ""
    @State var dispMapType: MKMapType = .standard
    
    var body: some View {
        VStack {
            TextField("キーワード",
                      text: $inputText,
                      prompt: Text("キーワードを入力してください")
            )
            .onSubmit {
                dispSearchKey = inputText
            }
            .padding()
            
            ZStack(alignment: .bottomTrailing) {
                // マップを表示
                MapView(searchKey: dispSearchKey, mapType: dispMapType)
                
                // マップ種類切り替えボタン
                Button(action: {
                    // mapTypeプロパティー値をトグル
                    // 標準　→ 航空写真　→ 航空写真＋標準
                    // → 3D Flyover　→ 3D Flyover＋標準
                    // → 交通機関
                    if dispMapType == .standard {
                        dispMapType = .satellite
                    } else if dispMapType == .satellite {
                        dispMapType = .hybrid
                    } else if dispMapType == .hybrid {
                        dispMapType = .satelliteFlyover
                    } else if dispMapType == .satelliteFlyover {
                        dispMapType = .hybridFlyover
                    } else if dispMapType == .hybridFlyover {
                        dispMapType = .mutedStandard
                    } else {
                        dispMapType = .standard
                    }
                }) {
                    // マップアイコン表示
                    Image(systemName: "map")
                        .resizable()
                        .frame(width: 35.0, height: 35.0, alignment: .leading)
                } // Button ここまで
                // 右の余白を20空ける
                .padding(.trailing, 20.0)
                // 下の余白を30空ける
                .padding(.bottom, 30.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

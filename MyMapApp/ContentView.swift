//
//  ContentView.swift
//  MyMapApp
//
//  Created by ryotaban on 2023/01/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputText: String = ""
    @State var dispSearchKey: String = ""
    
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
            
            MapView(searchKey: dispSearchKey)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

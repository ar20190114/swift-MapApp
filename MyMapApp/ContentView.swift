//
//  ContentView.swift
//  MyMapApp
//
//  Created by ryotaban on 2023/01/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(searchKey: "東京タワー")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

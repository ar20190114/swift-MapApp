//
//  MapView.swift
//  MyMapApp
//
//  Created by ryotaban on 2023/01/15.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let searchKey: String
    
    func  makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context:Context) {
        print(searchKey)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "東京タワー")
    }
}

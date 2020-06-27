//
//  MapView.swift
//  Landmarks
//
//  Created by Abdullah Alhasan on 6/27/20.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var landmark: Landmark
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.002536, longitudeDelta: 0.004463)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = landmark.name
        annotation.subtitle = landmark.category.self.rawValue

        uiView.addAnnotation(annotation)
        uiView.mapType = MKMapType.hybrid
    }


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmark: landmarkData[0], coordinate: landmarkData[0].locationCoordinate)
    }
}
}


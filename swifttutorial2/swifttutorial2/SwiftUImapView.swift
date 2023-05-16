//
//  SwiftUImapView.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import SwiftUI
import MapKit



struct Location:Identifiable {
    let id = UUID()
    let name:String
    let coordinates: CLLocationCoordinate2D
}



struct SwiftUImapView: View {
    
    @State private var showAlert = false
    @State private var showSheet = false
    
    @State private var mapRegion : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(
    latitude: 35.5, longitude: 45.4
    ),span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    let locations = [
    Location(name: "Azady Park", coordinates: CLLocationCoordinate2D(latitude: 35.566139, longitude: 45.431369)),
    Location(name: "Shopping Mall", coordinates: CLLocationCoordinate2D(latitude: 35.559038, longitude: 45.420072)),
    Location(name: "Family Mall", coordinates: CLLocationCoordinate2D(latitude: 35.540654, longitude: 45.426747))
    ]
     
    
    var body: some View {
        
        Map(coordinateRegion: $mapRegion,annotationItems: locations){
            location in
            MapAnnotation(coordinate: location.coordinates){
//                Circle()
//                    .stroke(.blue,lineWidth: 5)
//                    .frame(width: 32,height: 32)
                
//                Image(systemName: "mappin.and.ellipse")
//                    .foregroundColor(.red)
//                    .font(.system(size: 40,weight: .bold))
//                    .imageScale(.large)
//                    .onTapGesture {
//                        print("\(location.name)")
//                    }
                
                Button{
                  //  showAlert.toggle()
                    showSheet = true
                }label: {
                    Image(systemName: "mappin.and.ellipse")
                        .font(.system(size: 40,weight: .bold))
                }
//                .alert("Location", isPresented: $showAlert){
//                    Button("Ok"){}
//
//                }message: {
//                    Text("\(location.name)")
//                }
                .sheet(isPresented: $showSheet){
                    Text("\(location.name)" ).presentationDetents([.medium, .large])
                }
                
            }
        }
        //.ignoresSafeArea()
        
        
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUImapView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUImapView()
    }
}

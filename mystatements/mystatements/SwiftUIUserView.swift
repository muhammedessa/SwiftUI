//
//  SwiftUIUserView.swift
//  mystatements
//
//  Created by Muhammed Essa on 14/05/2023.
//

import SwiftUI

struct SwiftUIUserView: View {
    
@AppStorage("name") var name:String = "Ahmed"
    
    var body: some View {
        VStack{
            Text("Stored name : \(name)").padding()
            
            TextField(name, text: $name)
                .textFieldStyle(.roundedBorder).padding()
            
            Button("Change value"){
                name = "Osama"
            }
            
        }
    }
}

struct SwiftUIUserView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIUserView()
    }
}

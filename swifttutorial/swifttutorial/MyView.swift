//
//  MyView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        
        NavigationView{
            List{
                Section("Network settings"){
                    Text("WiFi")
                    Toggle("Data Cell", isOn: .constant(true))
                    Text("Settings")
                }
                Text("Muhammed")
                Text("Ahmed")
                Text("Ali")
                HStack{
                    Image(systemName: "heart")
                    Text("Ali")
                }
                Text("Omer")
                Section(content: {
                    Text("App store")
                    Text("Gallery")
                },footer:{
                    Text("Muhammed Essa hameed Essa muhammed")
                })
     
            }
            .listStyle(.sidebar)
            .navigationTitle("Poeple")
        }
        
        
        
        
        
        
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}

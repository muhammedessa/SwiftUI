//
//  SwiftUIStoreDefaultView.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import SwiftUI

struct SwiftUIStoreDefaultView: View {
    
    @State private var name:String = ""
    @State private var savedName = UserDefaults.standard.string(forKey: "name")
    
    func storeDate() {
        name = "Ahmed Essa"
        UserDefaults.standard.set(name, forKey: "name")
    } 
    
    var body: some View {
        VStack{
            if (!(savedName == nil)){
                Text("Hello, \(savedName!)")
            }else{
                Text("Hello ")
            }
            
            Button("Click me" , action: storeDate).padding()
        }
        
    }
}

struct SwiftUIStoreDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStoreDefaultView()
    }
}

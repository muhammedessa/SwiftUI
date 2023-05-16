//
//  SwiftUIPickerView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct SwiftUIPickerView: View {
    
    let names = ["Muhammed", "Ahmed", "Osama"]
   @State private var selectedName = "Muhammed"
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Picker("People", selection: $selectedName){
                        ForEach(names,id: \.self){
                            Text($0)
                        }
                    }
                }
                
     
            }
           // .pickerStyle(.navigationLink)
            .pickerStyle(.segmented)
            .navigationTitle("Poeple")
        }
    }
}

struct SwiftUIPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPickerView()
    }
}

//
//  ContentView.swift
//  mystatements
//
//  Created by Muhammed Essa on 14/05/2023.
//

import SwiftUI

struct ContentView: View {
    
  @State private  var   number1 = 0
    
    var body: some View {
        VStack {
         
            Text("number is : \(number1)")
            
            BindingView(number1: $number1)
            
            
        }
        .padding()
    }
}



struct BindingView: View {
   @Binding var number1:Int
    var body: some View{
        Button("Click me"){
            number1 += 1
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

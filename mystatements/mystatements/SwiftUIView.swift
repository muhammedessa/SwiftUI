//
//  SwiftUIView.swift
//  mystatements
//
//  Created by Muhammed Essa on 14/05/2023.
//

import SwiftUI

// @ObservedObject , @StateObject

struct SwiftUIView: View {
    
//@ObservedObject var counterView = MyCounterView()
@StateObject var counterView = MyCounterView()
    
    var body: some View {
        VStack{
            Text("Count = \(counterView.count)")
            Button("click me"){
                counterView.addCount()
            }
        }
         
    }
}



final class MyCounterView: ObservableObject{
   @Published var count = 2
    func addCount()  {
        count += 1
    }
}






struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

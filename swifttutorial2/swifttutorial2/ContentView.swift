//
//  ContentView.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import SwiftUI

struct FloatingButton: View{
    let action: () -> Void
    let icon: String
    var body: some View{
        VStack{
            Spacer()
            HStack{
                Spacer()
                Button(action:action ){
                    Image(systemName: icon)
                        .font(.system(size:25))
                        .foregroundColor(.white)
                }
                .frame(width: 60, height: 60)
                .background(Color.red)
                .cornerRadius(30)
                .shadow(radius:10)
                .offset(x:-25,y:10)
                
            }
        }
    }
    
    
}

struct ContentView: View {
    var body: some View {
        VStack {
             
                 
            ZStack {
                Text("Hello, world!")
                    .font(.system(size:25))
                FloatingButton(action: {}, icon: "plus")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

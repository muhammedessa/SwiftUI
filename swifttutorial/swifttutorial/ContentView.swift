//
//  ContentView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 11/05/2023.
//

import SwiftUI

struct ContentView: View {
    func showInfo() {
        print("Muhammed Essa")
    }
    
    var body: some View {
        VStack{
//            Button("Click me" , action:showInfo  )
//            Button{
//
//            }label: {
//                VStack{
//                    Image(systemName: "star.fill")
//                    Text("Click me 2")
//                }
//            }.buttonStyle(.bordered)
//
//            Button{
//
//            }label: {
//                VStack{
//                    Image(systemName: "star.fill")
//                    Text("Click me 2")
//                }
//            }.buttonStyle(.borderedProminent)
//
//            Button{
//
//            }label: {
//                HStack{
//                    Image(systemName: "applelogo")
//                    Text("Click me 2")
//                }
//            }.buttonStyle(.plain)
//
//
//
//            Button{
//
//            }label: {
//                 Label("click here", systemImage: "snowflake.circle.fill")
//            }.buttonStyle(.plain)
//
//            Button(action: {}){
//                Text("Button label")
//                    .padding()
//                    .border(.blue)
//
//            }
//            .foregroundColor(.white)
//            .background(.red)
//            .cornerRadius(9)
//
//
//            Button(action: {}){
//                Text("Button label")
//                .frame(maxWidth: .infinity)
//
//            }.buttonStyle(.borderedProminent)
//                .border(.green).font(.title)
                
               
            
//            Button{
//
//            }label: {
//                Text("click me")
//                    .foregroundColor(.red)
//                    .padding()
//                    .background(
//                    RoundedRectangle(
//                        cornerRadius: 20,
//                        style: .continuous
//                    )
//                    .fill(.yellow)
//                    //.stroke(.red, lineWidth: 4)
//
//                    )
//                    .overlay(
//                        RoundedRectangle(
//                            cornerRadius: 20,
//                            style: .continuous
//                        )
//                        .stroke(.red, lineWidth: 4)
//                    )
//
//            }
            
            
//            Button{
//                showInfo()
//            }label: {
//                Text("click me")
//                    .foregroundColor(.red)
//                    .padding()
//                    .background(
//                        ZStack{
//                            RoundedRectangle(
//                          cornerRadius: 20,
//                         style: .continuous
//                             ).fill(.yellow)
//
//                            RoundedRectangle(
//                          cornerRadius: 20,
//                         style: .continuous
//                             ).stroke(.red, lineWidth: 4)
//                        }
//                    )
//            }
            
            Button{
                
            }label: {
                Image(systemName: "swift")
                    .font(.title)
            }
            
            
            Button{
                
            }label: {
                Image("visa-2")
                    .resizable()
                    .frame(width: 128,height: 128)
            }
            
            
        }
        
        
       
       
        
        
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

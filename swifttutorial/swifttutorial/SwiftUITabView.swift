//
//  SwiftUITabView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct SwiftUITabView: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        
        NavigationView{
            TabView(selection: $selection){
                
                List(1...10, id: \.self){
                    index in
                    NavigationLink(destination: Text("Item \(index) "), label: {
                        Text("Item \(index)")
                            .font(.system(size: 20,weight: .bold,design: .rounded))
                    })
                }
                .tabItem {
                    Image(systemName: "phone")
                     Text("First View")
                }.tag(0)
                Text("this is Second view")
                    .font(.system(size: 30,weight: .bold,design: .rounded))
                    .tabItem {
                        Image(systemName: "tv")
                        Text("Second View")
                    }.tag(1)
                Text("this is Third view")
                    .font(.system(size: 30,weight: .bold,design: .rounded))
                    .tabItem {
                        Image(systemName: "video")
                        Text("Third View")
                    }.tag(2)
                Text("this is Third view")
                    .font(.system(size: 30,weight: .bold,design: .rounded))
                    .tabItem {
                        Image(systemName: "person")
                        Text("Forth View")
                    }.tag(3)
            }.accentColor(.red)
                .onAppear(){
                    UITabBar.appearance().barTintColor = .white
                }
                .navigationTitle("Hello Title")
        }
        
        
        
        
        
        
        
        
        
        
        
//        TabView{
//            FirstView()
//                .tabItem {
//                    Image(systemName: "phone")
//                     Text("First View")
//                }
//            SecondView()
//                .tabItem {
//                    Image(systemName: "tv")
//                     Text("Second View")
//                }
//
//            Text("this is first view")
//                .tabItem {
//                    Image(systemName: "phone")
//                    Text("First View")
//                }
//            Text("this is Second view")
//                .tabItem {
//                    Image(systemName: "tv")
//                    Text("Second View")
//                }
 //       }
        
        
        
        
        
    }
}


struct FirstView: View {
    var body: some View{
        Color.yellow
    }
}


struct SecondView: View {
    var body: some View{
        Color.purple
    }
}






struct SwiftUITabView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITabView()
    }
}

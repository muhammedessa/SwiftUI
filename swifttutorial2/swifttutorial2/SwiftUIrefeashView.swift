//
//  SwiftUIrefeashView.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import SwiftUI



struct SwiftUIrefeashView: View {
    
    @State private var news = [
        NewItem(userId: 0, id: 0, title: "check latest news", body: "check latest news")
    ]
    
    
    var body: some View {
        
        NavigationView{
            List(news){
                item in
                VStack(alignment: .leading){
                    Text(item.title)
                        .font(.headline)
                     
                    Text(item.body)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
            } .refreshable {
                do {
                    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
                    let (data, _) = try await URLSession.shared.data(from: url)
                    news = try JSONDecoder().decode([NewItem].self, from: data)
                    
                }catch{
                    news = []
                }
                  }
        }
        
        
        
        
        
        
//        NavigationView{
//            List(1..<40){
//                row in
//                Text("Item \(row)")
//            }.refreshable {
//                print("refresh is working")
//            }
//        }
//        .navigationTitle("Data")
    }
}

struct SwiftUIrefeashView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIrefeashView()
    }
}

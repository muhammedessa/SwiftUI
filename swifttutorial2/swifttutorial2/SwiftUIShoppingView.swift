//
//  SwiftUIShoppingView.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import SwiftUI


struct ShoppingItem: Identifiable, Hashable {
    let id =  UUID()
    let brand: String
    let price: Int
    let image: String
    let body: String
}

extension ShoppingItem{
    static var dummyData:[ShoppingItem]{
        return [
            .init(brand: "iPhone 13", price: 333, image: "iphone13",body: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap"),
            .init(brand: "iPhone 14", price: 500, image: "iphone14",body: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap"),
            .init(brand: "iPhone 12", price: 600, image: "iphone12",body: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap"),
            .init(brand: "iPhone 11", price: 700, image: "iphone11",body: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap")
        ]
    }
}

struct SwiftUIShoppingView: View {
    
    @State private var path = [ShoppingItem]()
    
    var body: some View {
        VStack{
            NavigationStack(path: $path){
                List(ShoppingItem.dummyData){
                    item in
                    NavigationLink(item.brand,value: item)
                }.listStyle(.insetGrouped)
                    .navigationDestination(for: ShoppingItem.self){
                        item in
                        Text(item.brand)
                            .font(.largeTitle)
                            .bold()
                        Text(" \(item.price) $")
                            .font(.largeTitle)
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300)
                        Text(" \(item.body) $").padding()
                        
                    }
            }
        }
    }
}

struct SwiftUIShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIShoppingView()
    }
}

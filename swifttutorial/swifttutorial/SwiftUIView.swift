//
//  SwiftUIView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 11/05/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        
        VStack{
            Label("Hello", systemImage: "heart")
            Text("Hello, World!").padding()
            Label("Hello", systemImage: "heart")
                .labelStyle(.titleOnly).padding()
            Label("Hello", systemImage: "heart")
                .labelStyle(.iconOnly).padding()
            Label("Hello", systemImage: "heart")
                .labelStyle(.titleAndIcon).padding()
        }
        
//        ScrollView{
//            LazyVGrid(
//                columns: [GridItem(.adaptive(minimum: 100))]
//            ){
//                ForEach(0..<20){ item in
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color.white)
//                        .frame(height: 100)
//                        .shadow(radius: 100)
//                }
//            }.padding()
//        }
        
        
//        ScrollView(.vertical){
//            LazyVStack{
//                Text("Hello, World!")
//                    .padding()
//                    .background(.blue)
//                    .cornerRadius(8)
//                Text("Hello, World!")
//                    .padding()
//                    .background(.blue)
//                    .cornerRadius(8)
//                Text("Hello, World!")
//                    .padding()
//                    .background(.blue)
//                    .cornerRadius(8)
//                Text("Hello, World!")
//                    .padding()
//                    .background(.blue)
//                    .cornerRadius(8)
//            }
//            .padding()
//        }.background(Color(UIColor.systemGroupedBackground))
        
        
//        VStack{
//            Text("Hello, World!")
//                .font(.largeTitle)
//            Image("nature")
//                .resizable()
////                .scaledToFit()
//                .frame(width: 200, height:200,alignment: .top)
//               // .border(Color.blue, width: 3)
//                .clipShape(Circle())
//
//            Spacer()
//        }
        
//        Image("nature")
//            .resizable()
//           // .scaledToFit()
//            .aspectRatio(contentMode: .fit)
        
        
//        Form{
//            Section{
//                Text("Hello, World!")
//                Text("Hello, World!")
//                Text("Hello, World!")
//                Text("Hello, World!")
//            }
//            Section{
//                Text("Hello, World!")
//                Text("Hello, World!")
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text("Hello, World!")
//            }
//            Group{
//                Text("Hello, World!")
//                Text("Hello, World!")
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text("Hello, World!")
//            }
//            Group{
//                Text("Hello, World!")
//                Text("Hello, World!")
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            }
//
//        }
        
        
        
//        VStack(alignment: .center, spacing: 20 ){
//            Text("Hello, World!")
//            Spacer()
//            Text("Hello, World!")
//            Text("Hello, World!")
            
//            HStack(spacing: 12 ){
//                Text("Hello, World!")
//                Spacer()
//                Text("Hello, World!")
//                Text("Hello, World!")
//            }.padding()
//                .frame(width: 300)
            
//            ZStack(alignment: .center){
//               // Image(systemName: "heart").resizable().frame(width: 200,height: 200)
//                Rectangle()
//                    .foregroundColor(.blue)
//                    .frame(width: 300,height: 300)
//
//                Rectangle()
//                    .foregroundColor(.yellow)
//                    .frame(width: 200,height: 200)
//
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 100,height: 100)
//
//
//            }.padding()
             
            
      //  }
       
        
   
        
        
        
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

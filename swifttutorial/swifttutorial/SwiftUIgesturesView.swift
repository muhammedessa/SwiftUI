//
//  SwiftUIgesturesView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct SwiftUIgesturesView: View {
    
    @State private var name:String  = ""
    @State private var name1:String  = "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy "
    
    @State private var showData = false
    @State private var showDataAlert = false
    @State private var myDate = Date.now
    @State private var myStatus = false
    
    var body: some View {
        VStack{
            
       
            
            
            
//            DatePicker(selection: $myDate, in: ...Date.now, displayedComponents: .date ){
//                Text("Select a date").font(.largeTitle)
//            }
           
//            DatePicker("Select a date", selection: $myDate )
//                .datePickerStyle(GraphicalDatePickerStyle())
//                 .frame(maxHeight: 500)
//
//
//            Text("Your Date is : \(myDate.formatted(date: .long,time: .omitted))")
            
            
//                Button("click me"){
//                    showDataAlert = true
//                }
//                .alert("This Alert", isPresented: $showDataAlert){
//                    Button("Delete", role: .destructive){}
//                    Button("Ok"){}
//                    Button("Stop", role: .cancel){}
//                } message: {
//                    Text("orem Ipsum is simply dummy text of the printing")
//                }
            
            
            
//            Button("click me"){
//                showData.toggle()
//            }
//            .sheet(isPresented: $showData){
//                Text("Hello, Muhammed")
////                    .presentationDetents([.medium, .large])
////                    .presentationDragIndicator(.hidden)
//                  //  .presentationDetents([.fraction(0.15)])
//                    .presentationDetents([.height(300)])
//
//            }
            
            
//            TextEditor(text: $name1).padding()
//               // .font(.headline)
//                .font(.system(size: 30))
//                .foregroundColor(Color.red)
//                .multilineTextAlignment(.center)
//                .lineSpacing(10)
//                .border(Color.purple)
//                .frame(minWidth: 0,maxWidth: 320,minHeight: 100,maxHeight: 200)
            
            
//            Text("Click me")
//                .padding()
//                .onTapGesture {
//                    name = "Muhammed"
//                }
////                .onLongPressGesture{
////                    name = "ongPressGesture"
////                }
//                .onLongPressGesture(minimumDuration: 2){
//                    name = "ongPressGesture"
//                }
//            Text("Hello, \(name)")


        }
    }
}

struct SwiftUIgesturesView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIgesturesView()
    }
}

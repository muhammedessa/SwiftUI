//
//  ShowDetailsView.swift
//  uiuxdesign
//
//  Created by Muhammed Essa on 14/05/2023.
//

import SwiftUI

struct ShowDetailsView: View {
    var body: some View {
       
        VStack{
            ZStack{
                Image("listimage/listImage1")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 600) 
                    .overlay{
                        LinearGradient(
                            colors: [.black,.red],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing).opacity(0.6)
                    }
                VStack{
                    VStack(alignment: .trailing){
                        Text("tranding").foregroundColor(.white).padding(9)
                            .background(.red)
                            .cornerRadius(22).padding(.bottom,50)
                    }.frame(maxWidth: 360,alignment: .topTrailing)
                    HStack{
                        Label("3.4", systemImage: "star.fill")
                            .font(.caption).bold().padding(3).background(.white)
                            .cornerRadius(5)
                       Text("4.3 km").font(.caption).bold().padding(3)
                            .background(.white)
                            .cornerRadius(5)
                    }.frame(maxWidth: 360,alignment: .topLeading)
                    
                    Text("Stanford Dish").foregroundColor(.white).bold().font(.title)
                        .frame(maxWidth: 360,alignment: .topLeading)
                    Text("Palto Alto").foregroundColor(.white)
                        .frame(maxWidth: 360,alignment: .topLeading)
                    
                    HStack{
                        Text("Wi-fi").font(.caption).bold().padding(3).background(.white).cornerRadius(5)
                        Text("Parking").font(.caption).bold().padding(3).background(.white).cornerRadius(5)
                        Text("Cafe").font(.caption).bold().padding(3).background(.white).cornerRadius(5)
                        Spacer()
                        Image(systemName: "heart.fill").font(.title)
                            .foregroundColor(.white)
                    }.frame(maxWidth: 360,alignment: .topLeading)
                    
                } .padding(.top)
                
               
            }
           
            Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .frame(maxWidth: .infinity,alignment: .leading).padding(.leading)
            
            HStack{
                Image(systemName: "calendar.circle").font(.system(size: 40))
                    .foregroundColor(.gray)
                VStack(alignment: .leading){
                    Text("07:00 - 22:00").fontWeight(.bold)
                    Text("Monday to Sunday")
                }
                Spacer()
                Image(systemName: "mappin.circle").font(.system(size: 40))
                    .foregroundColor(.gray)
                Image(systemName: "phone.circle").font(.system(size: 40))
                    .foregroundColor(.gray)
            }.padding()
            
            VStack{
                HStack{
                    Text("Menu").fontWeight(.bold)
                    Spacer()
                    Text(" >")
                }.padding().background(Color.gray.opacity(0.2)).cornerRadius(10)
                
                HStack{
                    Text("Reviews").fontWeight(.bold)
                    Spacer()
                    Text("81")
                    Text(" >")
                }.padding().background(Color.gray.opacity(0.2)).cornerRadius(10)
                
                HStack{
                    Text("Gallery").fontWeight(.bold)
                    Spacer()
                    Text("12")
                    Text(" >")
                }.padding().background(Color.gray.opacity(0.2)).cornerRadius(10)
            }.padding(.leading).padding(.trailing)
            
             Spacer()
        }.edgesIgnoringSafeArea(.top)
        
      
    }
}

struct ShowDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDetailsView()
    }
}

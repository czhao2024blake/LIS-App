//
//  HomeScreen.swift
//  Chat Bot
//
//  Created by Christopher Zhao24 on 1/31/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: 550, height: 180, alignment: .top)
                    .foregroundColor(Color("MainColor"))
                HStack{
                    Text("Welcome Student!!")
                        .font(.custom("BanglaSangamMN", size:32))
                        .offset(x: -10 ,y: 58)
                        
                    // LanguageSelectionView() ?
                    Text("🇺🇸")
                        .font(.system(size:80))
                        .offset(x: 10 ,y: 52)
                }
            }
                .position(x:200,y:-40)
            
            Image("LISlogowithname")
                .resizable()
                .frame(width: 350, height: 300)
                .scaledToFit()
                .offset(x:0,y:-95)
            
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
               // .resizable()
                .frame(width: 300, height: 100 )
                .foregroundColor(.blue)
            Spacer()
            RoundedRectangle(cornerRadius: 20, style: .continuous)
             //   .resizable()
                .frame(width: 300, height: 100)
                .foregroundColor(.blue)
            Spacer()
          //  List{
            
                
                
          //  }
        }
    }
}

#Preview {
    HomeScreen()
}

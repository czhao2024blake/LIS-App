//
//  ContentView.swift
//  UI for LIS App
//
//  Created by Calvin Bredesen24 on 1/26/24.
//

import SwiftUI

struct ContentView: View {
   
    
    @State var text: String = ""
    
    
    
    var body: some View {
        
       
        
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                HStack{
                    VStack{
                        ZStack{
                            Text("")
                                .frame(width: UIScreen.main.bounds.width + 50, height: 120)
                                .background(Color.gray.opacity(0.5))
                            VStack{
                                Image("me and bro")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 75, height: 75)
                                Text("Contact Name")
                                    .foregroundColor(.white)
                            }
                        }
                        Spacer()
                        //TextField()
                        ZStack{
                           
                            Text("")
                                .frame(width: UIScreen.main.bounds.width + 50, height: 120)
                                .background(Color.gray.opacity(0.5))
                                .cornerRadius(15)
                            TextField("Type message here...", text: $text)
                                .frame(width: UIScreen.main.bounds.width-15, height: 45)
                                .background(Color.white)
                                .cornerRadius(15)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

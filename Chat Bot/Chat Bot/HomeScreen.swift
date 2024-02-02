//
//  HomeScreen.swift
//  Chat Bot
//
//  Created by Christopher Zhao24 on 1/31/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var appLanguage = "English"
    @State var languageToLearn = "English"
    var languagesFlag = ["🇺🇸", "🇪🇸", "🇫🇷"]
    var languages = ["English", "Español", "Français"]
    let homeViewModel = HomeViewModel()
    let masterColor = Color("masterColor")
    
    var body: some View {
        NavigationView(content: {
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width: 550, height: 200, alignment: .top)
                        .foregroundColor(masterColor)
                    HStack{
                        Text(["Hello Student!", "Hola Estudiante!", "Bonjour Étudiant"][homeViewModel.getLanguageIndex(appLanguage)!])
                            .font(.custom("BanglaSangamMN", size:32))
                            .offset(x: -10 ,y: 58)
                            .frame(width: 500, height: 140)
                            .foregroundColor(Color.white)
                        
                        
                        // LanguageSelectionView() ?
//                        Picker("Select a Language", selection: $selection) {
//                            ForEach(languages, id: \.self) {
//                                Text($0)
//                                    .font(.system(size:80))
//                            }
                        }
                            
                            
                    }
                
                .position(x:200,y:-40)
                Spacer()
                Image("learningInStyleLogo")
                    .resizable()
                    .frame(width: 350, height: 300)
                    .scaledToFit()
                    .offset(x:0,y:-50)
//                HStack{
//                    Text("Pick a Default Language")
//                    Picker("Select a Language", selection: $appLanguage) {
//                        ForEach(languages, id: \.self) {
//                            Text($0)
//                                .font(.system(size:80))
//                        }
//                    }
//                }
//                HStack{
//                    Text("Pick a Language to Learn")
//                    Picker("Select a Language", selection: $languageToLearn) {
//                        ForEach(languages, id: \.self) {
//                            Text($0)
//                                .font(.system(size:80))
//                        }
//                    }
//                }
                NavigationLink(destination: HomeView()) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 0, style: .continuous)
                        // .resizable()
                            .frame(width: 250, height: 75 )
                            .foregroundColor(masterColor)
                        Text(["Conversation", "Conversación", "Conversation"][homeViewModel.getLanguageIndex(appLanguage)!])
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                    }
                }
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 0, style: .continuous)
                    //   .resizable()
                        .frame(width: 250, height: 75)
                        .foregroundColor(masterColor)
                        
                    Text(["Forms", "Configurar", "Le Formulaire"][homeViewModel.getLanguageIndex(appLanguage)!])
                        .foregroundColor(Color.white)
                        .font(.system(size: 45))
                }
                
                RoundedRectangle(cornerRadius: 0)
                    .frame(height: 80)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(masterColor)
                    .ignoresSafeArea()
                    .offset(y: 35)
                //  List{
                
                
                
                //  }
            }
        })
    }
}
                       

#Preview {
    HomeScreen()
}

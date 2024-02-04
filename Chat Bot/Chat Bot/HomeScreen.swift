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
                        .offset(x: 0, y: -150)
                        .foregroundColor(masterColor)
                    
                    HStack{
                        // Change language func needed
                        Text(["Hello Student!", "Hola Estudiante!", "Bonjour Étudiant"][homeViewModel.getLanguageIndex(appLanguage)!])
                            .font(.custom("BanglaSangamMN", size: 32))
                            .offset(x: -10, y: 58)
                            .frame(width: 500, height: 140)
                            .foregroundColor(Color.white)
                   /*
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                    */
                         //   .rotationEffect(Angle(degrees: 180 : 0))
                    }
                    .position(x: 200, y: -40)
                }
                
                Spacer()
                
                Image("learningInStyleLogo")
                    .resizable()
                    .frame(width: 350, height: 300)
                    .scaledToFit()
                    .offset(x: 0, y: -50)
                    //.shadow(color: Color.black.opacity(0.4), radius: 20, x: 0, y: 15)
              
                    
                NavigationLink(destination: HomeView()) {
                        Text(["Conversation", "Conversación", "Conversation"][homeViewModel.getLanguageIndex(appLanguage)!])
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .frame(width: 250, height: 75)
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .foregroundColor(masterColor))
                            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
                      
                }
                
                Spacer()
                    .frame(height: 19)
                
                NavigationLink(destination: HomeView()) {
                    Text(["Forms", "Configurar", "Le Formulaire"][homeViewModel.getLanguageIndex(appLanguage)!])
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                        .frame(width: 250, height: 75)
                        .background(RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .foregroundColor(masterColor))
                        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
                  
                }
                
                //blue on bottom
                RoundedRectangle(cornerRadius: 0)
                    .frame(height: 80)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(masterColor)
                    .ignoresSafeArea()
                    .offset(y: 35)
            }
        })
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

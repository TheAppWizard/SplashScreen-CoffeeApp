//
//  ContentView.swift
//  SplashScreenSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 21/12/21.
//
//  MARK: The App Wizard
//  Instagram :
//  MARK: @theappwizard2408

import SwiftUI

struct ContentView: View {
    @State var splashScreen  = true

    var body: some View {
         ZStack{
            Group{
              if splashScreen {
                  SplashScreen()
               }
              else{
                  MainView()
                    }
                }
               .onAppear {
                  DispatchQueue
                       .main
                       .asyncAfter(deadline:
                        .now() + 3) {
                   self.splashScreen = false
                  }
                }
            }
        }
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            LottieView(filename: "coffeesplash")
                .offset(x: 0, y: -50)
        }
    }
}

struct MainView: View {
    
    @State var changeOffset  = false
    @State var changeOpacity  = false
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            
            LoginPart()
            
            
            ZStack{
            Text("C A F É")
                .font(.system(size: 70))
                .fontWeight(.light)
                .foregroundColor(Color("coffee"))
                .multilineTextAlignment(.leading)
                .frame(width: 350, height: 200)
                .offset(x: 0, y: -100)
                
                
                
            Rectangle()
                 .foregroundColor(.white)
                 .frame(width: 350, height: 200)
                 .opacity(changeOpacity ? 0 : 1)
                 .offset(x: 0, y: -100)
                 .animation(Animation.easeInOut(duration: 3))
                 .onAppear() {
                        self.changeOpacity.toggle()
                        }
                
            }
            
            
            Image("coffeepic")
                .resizable()
                .frame(width: 294, height: 294)
                .offset(x: 12.5, y: changeOffset ? -240 : 7)
                .animation(Animation.easeInOut(duration: 1))
                .onAppear() {
                        self.changeOffset.toggle()
                    }
           
        }
    }
}


struct LoginPart: View {
    @State var changeOffset  = false
    
    var body: some View {
        
        
        
        ZStack{
           
            Rectangle()
                .foregroundColor(Color("coffee"))
            
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color.white.opacity(1))
                .offset(x: 0, y: -800)
            
           
            
           
            
            ZStack{
                Text("Find The Best Coffee for You.")
                    .font(.system(size: 35))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .frame(width: 350, height: 200)
                    .offset(x: -5, y: -290)
                    
                
                
//                Text("It's a Great Day for Coffee.")
//                    .font(.system(size: 35))
//                    .fontWeight(.semibold)
//                    .foregroundColor(Color.white)
//                    .multilineTextAlignment(.leading)
//                    .frame(width: 350, height: 200)
//                    .offset(x: -45, y: -290)
                   
                
                   
                
                
                Text("Lorem ipsum dolor sit amet, adipiscing elit. Nullam pulvinar dolor sed enim eleifend efficitur.")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white.opacity(0.8))
                    .multilineTextAlignment(.leading)
                    .frame(width: 350, height: 200)
                    .offset(x: 0, y: -170)
                
                
            }.padding()
            
            ButtonUI()
           
        } .offset(x: 0, y: changeOffset ?  400 : 700)
            .animation(Animation.easeInOut(duration: 1))
                        .onAppear() {
                            self.changeOffset.toggle()
          }
           
    }
}
///


struct ButtonUI: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.clear)
                .frame(width: 85, height: 85)
                .overlay {
                                Circle().stroke(.white, lineWidth: 2)
                            }
            
            
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 25, height: 35)
                .foregroundColor(.white)
                .offset(x: 3, y: 0)
            
        }.offset(x: 120, y: -30)
    }
}

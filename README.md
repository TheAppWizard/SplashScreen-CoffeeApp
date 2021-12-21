# SplashScreen-CoffeeApp
Coffee App Splash Screen made with SwiftUI.


## SplashScreen - Code 
```
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

```


## SplashScreen - Result / Output
![coffeeop](https://user-images.githubusercontent.com/70090469/146946773-9b6b0fba-c60d-4169-acd4-0290f33a411f.png)



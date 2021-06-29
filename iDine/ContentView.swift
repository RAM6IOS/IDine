
import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    
    var body: some View {
        ZStack{
            LinearGradin(topcolor: isNight ? .black : .blue, botomecolor: isNight ? .gray: Color("liytblue"))
            
            VStack{
                
                Cityname(cityname: "OuledSelama , Blida")
                
                Temprtshars(imagename:  isNight ? "cloud.moon.fill" :"cloud.sun.fill", temprtshar: isNight ? 15 : 25)
                
                
                HStack(spacing:20){
                    ExtractedView(dayorwik: "MON", imagename:"cloud.sun.fill", temprtshar: 25)
                    ExtractedView(dayorwik: "TUE", imagename:"cloud.rain.fill", temprtshar: 20)
                    ExtractedView(dayorwik: "WED", imagename:"wind", temprtshar: 17)
                    ExtractedView(dayorwik: "THU", imagename:"snow", temprtshar: 0)
                    ExtractedView(dayorwik: "FRI", imagename:"cloud.bolt.rain.fill", temprtshar: 19)
                    ExtractedView(dayorwik: "SAT", imagename:"cloud.sun.rain.fill", temprtshar: 23)
                    
                  
                }
                
                
                    Spacer()
                
                Button{
                    isNight.toggle()
                    
                } label:{
                    Text("Change Day Time")
                        .frame(width: 280, height: 50 )
                        .background(Color.white)
                        .font(.system(size: 20 , weight: .bold ,design: .default))
                        .cornerRadius(10)
                    
                }
                Spacer()
                  
              
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var dayorwik:String
    var imagename:String
    var temprtshar : Int
    
    
    
    var body: some View {
        VStack{
            Text(dayorwik)
                .foregroundColor(.white)
                .font(.system(size: 16 , weight: .medium))
            Image(systemName:  imagename)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
            //.font(.system(size: 36))
            
            Text("\(temprtshar)")
                .foregroundColor(.white)
                .font(.system(size: 28 , weight: .medium))
        }
    }
}

struct LinearGradin: View {
    var topcolor : Color
    var botomecolor : Color
    
    
    
    var body: some View {
       
        LinearGradient(gradient: Gradient(colors: [topcolor,botomecolor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}



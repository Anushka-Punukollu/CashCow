import SwiftUI

struct learnPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                    .ignoresSafeArea()
                VStack{
                    Text("Learn")
                        .font(.custom(
                            "Futura",
                            fixedSize: 75))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                    
                    Spacer()
                    
                    Text("It's simple: To master money, ")
                            .font(.custom(
                                "Futura",
                                fixedSize: 38))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                            .padding(.bottom, 130)
                }
                
                VStack{
                    Text("you must manage")
                            .font(.custom(
                                "Futura",
                                fixedSize: 38))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                            .padding(.top, 520)
                }
                
                VStack{
                    Text("it!")
                            .font(.custom(
                                "Futura",
                                fixedSize: 38))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                            .padding(.top, 610)
                }
                
                VStack{
                    
                    Image("cow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .rotationEffect(Angle(degrees: 20))
                        .padding(.bottom, 590)
                        .padding(.leading, 400)
                }
                
                VStack{
                    Image("coin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 125, height: 100)
                        .rotationEffect(Angle(degrees: 15))
                        .padding(.bottom, 590)
                        .padding(.trailing, 390)
                }
                        
                VStack{
                    NavigationLink(destination: credit())
                    {
                        Text("Credit")
                            .frame(height: 83)
                            .frame(width: 250)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .font(.custom(
                        "Futura",
                        fixedSize: 45))
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .tint(.white)
                }
                .padding(.bottom, 395)
                
                VStack{
                    NavigationLink(destination: budget())
                    {
                        Text("Budget")
                            .frame(height: 83)
                            .frame(width: 250)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .font(.custom(
                        "Futura",
                        fixedSize: 40))
                    .fontWeight(.bold)
                    .accentColor(Color(red: 0.93, green: 0.69, blue: 0.69, opacity: 1.00))
                }
                .padding(.bottom, 125)
                
                VStack{
                    
                    NavigationLink(destination: accounting())
                    {
                        Text("Accounting")
                            .frame(height: 83)
                            .frame(width: 250)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .font(.custom(
                        "Futura",
                        fixedSize: 40))
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .tint(.white)
                }
                .padding(.top, 150)
            }
            
        }
    
    }
}

struct learnPage_Previews: PreviewProvider {
    static var previews: some View {
        learnPage()
    }
}

import SwiftUI

struct creditQuiz: View {
    @State private var c1 = " "
    @State private var c2 = " "
    
    var body: some View {
        ZStack {
            Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Text("Credit Quiz")
                    .font(.custom("Futura",fixedSize: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 695)
                Spacer()
            }
            
            VStack
            {
                Text("What is not a type of credit?")
                    .font(.custom("Futura",fixedSize: 25))
                    .foregroundColor(.white)
                    .padding(.top, 5)
                HStack {
                    Button("Credit cards") {
                        c1 = "Incorrect ❌"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    Button("Mortgages") {
                        c1 = "Incorrect ❌"
                    }
                    .padding(12.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.93, green: 0.69, blue: 0.69))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    Button("Debit cards") {
                        c1 = "Correct ✅"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                }
                Text(c1)
                    .font(.custom("Futura",fixedSize: 20))
                    .foregroundColor(.white)
                Text(" ")
                
                
                Text("How can you boost your credit score?")
                    .font(.custom("Futura",fixedSize: 25))
                    .foregroundColor(.white)
                    .padding(.trailing, 40)
                
                HStack {
                    Button("Pay on time")
                    {
                        c2 = "Correct ✅"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Overspend")
                    {
                        c2 = "Incorrect ❌"
                    }
                    .padding(12.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.93, green: 0.69, blue: 0.69))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Max out cards")
                    {
                        c2 = "Incorrect ❌"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                }
                
                Text(c2)
                    .font(.custom("Futura",fixedSize: 20))
                    .foregroundColor(.white)
                Text(" ")
                
                VStack
                {
                    Image("cow")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct creditQuiz_Previews: PreviewProvider {
    static var previews: some View {
        creditQuiz()
    }
}

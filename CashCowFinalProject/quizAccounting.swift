import SwiftUI

struct quizAccounting: View {
    @State private var c1 = " "
    @State private var c2 = " "
    
    var body: some View {
        ZStack {
            Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Text("Accounting Quiz")
                    .font(.custom("Futura",fixedSize: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 695)
                Spacer()
            }
            
            VStack
            {
                Text("What is the money left over after necessities are paid called? ")
                    .font(.custom("Futura",fixedSize: 25))
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                
                HStack {
                    Button("Gross   Income") {
                        c1 = "Incorrect ❌"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Disposable Income") {
                        c1 = "Incorrect ❌"
                    }
                    .padding(1.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.93, green: 0.69, blue: 0.69))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    Button("Discretionary      Income") {
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
                
                
                Text("How do you calculate net worth?")
                    .font(.custom("Futura",fixedSize: 24))
                    .foregroundColor(.white)
                    .padding(.leading, 18)
                
                HStack {
                    Button("Assets  +  Liabilities")
                    {
                        c2 = "Incorrect ❌"
                    }
                    .padding(1.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Assets  -  Liabilities")
                    {
                        c2 = "Correct ✅"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.93, green: 0.69, blue: 0.69))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Liabilities -  Assets")
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


struct quizAccounting_Previews: PreviewProvider {
    static var previews: some View {
        quizAccounting()
    }
}

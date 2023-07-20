import SwiftUI

struct quizBudget: View {
    @State private var c1 = " "
    @State private var c2 = " "
    
    var body: some View {
        ZStack {
            Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Text("Budget Quiz")
                    .font(.custom("Futura",fixedSize: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 695)
                Spacer()
            }
            
            VStack
            {
                Text("Which of the following is an example of a fixed expense?    ")
                    .font(.custom("Futura",fixedSize: 25))
                    .foregroundColor(.white)
                    .padding(.top, 60)
                HStack {
                    Button("Groceries") {
                        c1 = "Incorrect ❌"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Rent or mortgage payment") {
                        c1 = "Correct ✅"
                    }
                    .padding(1.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.93, green: 0.69, blue: 0.69))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    Button("Entertainment") {
                        c1 = "Incorrect ❌"
                        
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
                
                
                Text("How should budgets be treated  as your finances change?")
                    .font(.custom("Futura",fixedSize: 24))
                    .foregroundColor(.white)
                    .padding(.leading, 18)
                
                HStack {
                    Button("Remain fixed & inflexible")
                    {
                        c2 = "Incorrect ❌"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.96, green: 0.78, blue: 0.31))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Ignored & Not updated")
                    {
                        c2 = "Incorrect ❌"
                    }
                    .padding(1.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.93, green: 0.69, blue: 0.69))
                    .font(.custom("Futura",fixedSize: 15))
                    .foregroundColor(.white)
                    
                    Button("Flexible & Grow Sustainably")
                    {
                        c2 = "Correct ✅"
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

struct quizBudget_Previews: PreviewProvider {
    static var previews: some View {
        quizBudget()
    }
}

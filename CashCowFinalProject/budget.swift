import SwiftUI

struct budget: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                    .ignoresSafeArea()
                
                VStack{
                    Text("Budget 💵    ")
                        .font(.custom("Futura", fixedSize: 55))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 650)
                }
                
                VStack{
                    Text("NOTES                        ")
                        .font(.custom("Futura", fixedSize: 30))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.bottom, 515)
                }
                
                VStack{
                    Text("Budgeting - a plan for wise spending & saving based on personal expenses.         Set personal goals - precise + achievable (reach goals by taking control of your finances).")
                        .font(.custom("Futura", fixedSize: 20))
                        .foregroundColor(.white)
                        .padding(.bottom, 325)
                        .padding(.leading, 14)
                }
                
                
                VStack{
                    Text("How to be a responsible consumer - don't buy on impulse, buy on clearance, & only when you can afford it, stick to your budget")
                        .font(.custom("Futura", fixedSize: 20))
                        .foregroundColor(.white)
                        .padding(.bottom, 70)
                        .padding(.leading, 16)
                }
                
                VStack{
                    Text("Budgeting isn't spending less it's spending smarter")
                        .font(.custom("Futura", fixedSize: 30))
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31))
                        .padding(.top, 155)
                }
                
                VStack{
                    Text("Proper money management helps you get the most out of your money through careful planning, saving, and spending.")
                        .font(.custom("Futura", fixedSize: 20))
                        .foregroundColor(.white)
                        .padding(.top, 365)
                        .padding(.leading, 16)
                }
                
                VStack{
                    NavigationLink(destination: expenseTracker()) {
                        Text("Expense Tracker! ")
                            .frame(height: 45)
                            .frame(width: 250)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .font(.custom(
                        "Futura",
                        fixedSize: 25))
                    .padding(.top, 555)
                    .fontWeight(.bold)
                    .accentColor(Color(red: 0.93, green: 0.69, blue: 0.69, opacity: 1.00))
                }
                
                VStack{
                    NavigationLink(destination:  quizBudget()) {
                        Text("Quiz Time! ")
                            .frame(height: 45)
                            .frame(width: 250)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .font(.custom(
                        "Futura",
                        fixedSize: 25))
                    .padding(.top, 695)
                    .fontWeight(.bold)
                    .accentColor(Color(red: 0.93, green: 0.69, blue: 0.69, opacity: 1.00))
                }
            }
        }
    }
    
    struct budget_Previews: PreviewProvider {
        static var previews: some View {
            budget()
        }
    }
}

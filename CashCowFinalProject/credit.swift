import SwiftUI

struct credit: View {
    var body: some View {
        
        NavigationStack {
                ZStack {
                    Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                        .ignoresSafeArea()
                    
                    VStack{
                        Text("Credit 💳      ")
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
                        Text("Credit - using someone else’s capital (money) for a period of time.      Consumer credit - borrowing money + incurring debt & deferring the repayment over time")
                            .font(.custom("Futura", fixedSize: 20))
                            .foregroundColor(.white)
                            .padding(.bottom, 325)
                            .padding(.leading, 18)
                    }
                    
                    VStack{
                        Text("PROS & CONS")
                            .font(.custom("Futura", fixedSize: 23))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .padding(.bottom, 155)
                    }
                    
                    VStack{
                        Text("PROS: instant enjoyment, convenience, emergency help, saving money(sales), credit rating boost")
                            .font(.custom("Futura", fixedSize: 20))
                            .foregroundColor(.white)
                            .padding(.bottom, 45)
                            .padding(.leading, 8)
                    }
                    
                    VStack{
                        Text("CONS: credit costs, interest, impulse buying is easy, overbuying, financial difficulty")
                            .font(.custom("Futura", fixedSize: 20))
                            .foregroundColor(.white)
                            .padding(.top, 125)
                            .padding(.trailing, 13)
                    }
                    
                    VStack{
                        Text("Open a credit card and use it for purchases you can afford. This will boost your credit score & shows banks you're responsible. This makes it easier to get loans with lower interest rates. Types of credit - credit cards, loans, line of credit, mortgages, overdraft"
                        )
                        .font(.custom("Futura", fixedSize: 20))
                        .foregroundColor(.white)
                        .padding(.top, 400)
                        .padding(.leading, 22)
                    }
                    
                    VStack{
                        NavigationLink(destination: creditQuiz()) {
                            Text("Quiz Time! ")
                                .frame(height: 40)
                                .frame(width: 200)
                        }
                        .buttonStyle(BorderedProminentButtonStyle())
                        .font(.custom(
                            "Futura",
                            fixedSize: 25))
                        .padding(.top, 675)
                        .fontWeight(.bold)
                        .tint(.yellow)
                    }
                }
            }
        }
            
            struct credit_Previews: PreviewProvider {
                static var previews: some View {
                    credit()
                }
            }
        }

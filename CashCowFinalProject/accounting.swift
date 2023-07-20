import SwiftUI

struct accounting: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                    .ignoresSafeArea()
                
                VStack{
                    Text("Accounting 🏦")
                        .font(.custom("Futura", fixedSize: 50))
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
                    Text("Accounting - the process of recording, analyzing, & interpreting the economic activities of a person / business.             Income is money that an individual / business receives from various sources, such as wages, sales, interest, or dividends")
                        .font(.custom("Futura", fixedSize: 18))
                        .foregroundColor(.white)
                        .padding(.bottom, 325)
                        .padding(.leading, 20)
                }
                
                VStack{
                    Text("ACCOUNTING TERMS")
                        .font(.custom("Futura", fixedSize: 20))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .padding(.bottom, 133)
                        .padding(.leading, 16)
                }
                
                VStack{
                    Text("Gross income - the total amount of income received by a person.                    Disposable income - the amount available to spend (after deductions, taxes, CPP). Discretionary income - money left over after necessities are paid")
                        .font(.custom("Futura", fixedSize: 18))
                        .foregroundColor(.white)
                        .padding(.top, 45)
                        .padding(.leading, 22)
                }


                VStack{
                    Text("Liabilities - debts or amounts owed to others. Assets - something a person owns that has value.")
                        .font(.custom("Futura", fixedSize: 18))
                        .foregroundColor(.white)
                        .padding(.top, 265)
                        .padding(.leading, 20)
                }

                VStack{
                    Text("Personal equity - what you’d have left after paying off debt (net worth) = assets - liabilities")
                        .font(.custom("Futura", fixedSize: 18))
                        .foregroundColor(.white)
                        .padding(.top, 407)
                        .padding(.leading, 15)
                }
                
                VStack{
                    NavigationLink(destination: quizAccounting()) {
                        Text("Quiz Time! ")
                            .frame(height: 45)
                            .frame(width: 275)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .font(.custom(
                        "Futura",
                        fixedSize: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .tint(.white)
                    .padding(.top, 695)
                }
                
                VStack{
                    NavigationLink(destination: interestCalculator()) {
                        Text("Interest Calculator! ")
                            .frame(height: 45)
                            .frame(width: 275)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .font(.custom(
                        "Futura",
                        fixedSize: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .tint(.white)
                    .padding(.top, 555)
                    

                }
            }
        }
    }
}

struct accounting_Previews: PreviewProvider {
    static var previews: some View {
        accounting()
    }
}

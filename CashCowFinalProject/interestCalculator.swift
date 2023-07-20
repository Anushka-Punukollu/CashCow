import SwiftUI

struct interestCalculator: View {
    
    @State private var initialInv = ""
    @State private var IntinitialInv = 0.00
    @State private var interestRate = ""
    @State private var IntinterestRate = 0.00
    @State private var years = ""
    @State private var Intyears = 0.00
    @State private var compoundingPeriod = ""
    @State private var IntcompoundingPeriod = 1.00
    @State private var interestEarned = 0.00
    @State private var totalInterest = 0.00
    
    var body: some View {
        ZStack {
            Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack{
                    Text("INTEREST CALCULATOR")
                        .fontWeight(.heavy)
                        .font(.custom(
                            "Futura",
                            fixedSize: 40))
                        .foregroundColor(Color.white)
                    
                    Image("coin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .padding(.bottom, 40)
                }
                HStack (spacing: 60) {
                    Text("Inital \nInvestment")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                    TextField("Amount ($)", text: $initialInv)
                        .padding()
                        .multilineTextAlignment(.leading)
                        .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                        .border(Color.white, width: 1)
                        .background(Color.white)
                        .cornerRadius(5)
                }
                .padding(.top, 5)
                
                HStack (spacing: 47) {
                  Text("Interest Rate")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                  TextField("%", text: $interestRate)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    .border(Color.white, width: 1)
                    .background(Color.white)
                    .cornerRadius(5)
                }
                HStack (spacing: 115) {
                  Text("Years")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                  TextField("# of years", text: $years)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    .border(Color.white, width: 1)
                    .background(Color.white)
                    .cornerRadius(5)
                }
                Divider()
                Text("For Compound Interest")
                  .font(.title)
                  .fontWeight(.bold)
                  .foregroundColor(Color.white)
                  .padding(.top, 25)

                HStack (spacing: 33) {
                          Text("Compounding Period")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                          TextField("# of times per year", text: $compoundingPeriod)
                            .padding()
                            .multilineTextAlignment(.leading)
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .border(Color.white, width: 1)
                            .background(Color.white)
                            .cornerRadius(5)
                        }
                        Spacer()
                      }
                      .padding()
                      VStack (spacing: 45)
                      {
                        Spacer()
                              Button("Calculate     ") {
                                  IntinitialInv = Double(initialInv) ?? 0
                                  IntinterestRate = Double(interestRate) ?? 0
                                  Intyears = Double(years) ?? 0
                                  IntcompoundingPeriod = Double(compoundingPeriod) ?? 1
                                  if IntcompoundingPeriod == 1 {
                                      interestEarned = IntinitialInv * (IntinterestRate / 100) * Intyears
                                      totalInterest = interestEarned + IntinitialInv
                                  }
                                  else{
                                      totalInterest = IntinitialInv * pow((1 + (IntinterestRate / (100 * IntcompoundingPeriod))),(IntcompoundingPeriod * Intyears))
                                      interestEarned = totalInterest - IntinitialInv
                                  }
                              }
                              .font(.largeTitle)
                              .fontWeight(.bold)
                              .buttonStyle(.borderedProminent)
                              .tint(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                    
                        Text("Interest Earned: $\(interestEarned, specifier: "%.2f")")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                        
                        Text("Total: $\(totalInterest, specifier: "%.2f")")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
            }
        }
    }
}
struct interestCalculator_Previews: PreviewProvider {
    static var previews: some View {
        interestCalculator()
    }
}

import SwiftUI

struct expenseTracker: View {
    @State private var budget = ""
    @State private var expense1name = ""
    @State private var expense1amt = ""
    @State private var numexpense1amt = 0
    @State private var expense2name = ""
    @State private var expense2amt = ""
    @State private var numexpense2amt = 0
    @State private var expense3name = ""
    @State private var expense3amt = ""
    @State private var numexpense3amt = 0
    @State private var expense4name = ""
    @State private var expense4amt = ""
    @State private var numexpense4amt = 0
    @State private var totalExpenses = 0
    
    
    var body: some View {
        ZStack {
            Color(red: 0.34, green: 0.33, blue: 0.57, opacity: 1.00)
                .ignoresSafeArea()
            VStack (alignment: .leading){
                HStack(spacing: 50) {
                    Text("EXPENSE TRACKER")
                        .fontWeight(.heavy)
                        .font(.custom(
                            "Futura",
                            fixedSize: 40))
                        .foregroundColor(Color.white)
                    Image("coin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80.0, height: 80.0)
                }
                
                TextField("[Expense Name]", text: $expense1name)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))

                TextField("Amount ($)", text: $expense1amt)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    .border(Color.white, width: 1)
                    .background(Color.white)
                    .cornerRadius(5)
                
                TextField("[Expense Name]", text: $expense2name)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                TextField("Amount ($)", text: $expense2amt)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    .border(Color.white, width: 1)
                    .background(Color.white)
                    .cornerRadius(5)
                
                TextField("[Expense Name]", text: $expense3name)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                TextField("Amount ($)", text: $expense3amt)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    .border(Color.white, width: 1)
                    .background(Color.white)
                    .cornerRadius(5)
                
                TextField("[Expense Name]", text: $expense4name)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                TextField("Amount ($)", text: $expense4amt)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    .border(Color.white, width: 1)
                    .background(Color.white)
                    .cornerRadius(5)
                
                Spacer()
            }
            .padding()
            .padding()
            
            VStack(spacing: 25)
            {
                Spacer()
                Button(" Calculate  ") {
                    numexpense1amt = Int(expense1amt) ?? 0
                    numexpense2amt = Int(expense2amt) ?? 0
                    numexpense3amt = Int(expense3amt) ?? 0
                    numexpense4amt = Int(expense4amt) ?? 0
                    totalExpenses = numexpense1amt + numexpense2amt + numexpense3amt + numexpense4amt
                }
                .font(.largeTitle)
                .fontWeight(.bold)
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
                
                Text("Total Expenses: $\(totalExpenses)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.78, blue: 0.31, opacity: 1.00))
            }
            .padding(.bottom, 50)
            
            VStack() {
                Image("PartialCoin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100.0)
                    .padding(.top, 650)
                    .padding(.trailing, 330)
            }
        }
    }
        struct expenseTracker_Previews: PreviewProvider {
            static var previews: some View {
                expenseTracker()
            }
        }
    }

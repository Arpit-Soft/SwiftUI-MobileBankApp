//
//  ContentView.swift
//  SwiftUI-MobileBankApp
//
//  Created by Arpit Dixit on 31/08/21.
//

import SwiftUI

struct ContentView: View {
    
    let size = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            HStack {
                Image("face")
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .center)
                Text("Hi Arpit")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "bell.badge")
                    .font(.title)
                    .foregroundColor(.white)
            }.padding()
            
            
            HStack {
                VStack {
                    Text("Total Balance")
                        .opacity(0.5)
                        .foregroundColor(.white)
                        .padding(.bottom, 2)
                    Text("$15,269")
                        .font(.title)
                        .foregroundColor(.white)
                }.frame(width: size.width/2.2, height: size.height/6)
                .background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
                .cornerRadius(16.0)
                
                VStack {
                    Text("Monthly Spending")
                        .opacity(0.5)
                        .foregroundColor(.white)
                        .padding(.bottom, 2)
                    Text("$7,175")
                        .font(.title)
                        .foregroundColor(.white)
                }.frame(width: size.width/2.2, height: size.height/6)
                .background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
                .cornerRadius(16.0)
            }
            Spacer()
            
            //Card Control
            ZStack {
                CardView(title: "Salary Card", lastFour: "4536", amount: "$5537")
                    .frame(width: size.width, height: 200, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)), Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30.0)
                    .padding()
                    .offset(y: -200.0)
                CardView(title: "Private Card", lastFour: "4212", amount: "$8978")
                    .frame(width: size.width, height: 200, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30.0)
                    .padding()
                    .offset(y: -100.0)
                CardView(title: "Family Card", lastFour: "1212", amount: "$12,456")
                    .frame(width: size.width, height: 200, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30.0)
                    .padding()
                    .offset(y: 0.0)
            }
            
            Button(action: {}, label: {
                Text("Add Card")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "plus")
                    .font(.system(size: 22))
            })
            .padding(20)
            .frame(width: size.width - 40, height: 80)
            .background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
            .cornerRadius(10.0)
        }.padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
        .ignoresSafeArea()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

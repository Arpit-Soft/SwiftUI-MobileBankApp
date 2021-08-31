//
//  CardView.swift
//  SwiftUI-MobileBankApp
//
//  Created by Arpit Dixit on 31/08/21.
//

import SwiftUI

struct CardView: View {
    
    let title: String
    let lastFour: String
    let amount: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(.white)
                    Text("**** \(lastFour)")
                        .foregroundColor(.white)
                }.padding()
                Spacer()
                Text(amount).padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            HStack {
                HStack(spacing: -10) {
                    Image("face")
                        .resizable()
                        .frame(width: 44, height: 44, alignment: .center)
                    Image("face")
                        .resizable()
                        .frame(width: 44, height: 44, alignment: .center)
                    Image(systemName: "plus.circle")
                        .foregroundColor(.white)
                        .opacity(0.5)
                        .font(.system(size: 35))
                }
                Spacer()
                Text("VISA").padding()
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Salary Card", lastFour: "4536", amount: "$5537")
    }
}

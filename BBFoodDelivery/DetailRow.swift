//
//  DetailRow.swift
//  BBFoodDelivery
//
//  Created by Grant Rudow on 2/2/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import SwiftUI

struct DetailRow: View {
    
    @Binding var showOrderSheet: Bool
    var food: Food
    
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(food.title)
                    .font(.headline)
                    .padding(.top, 10)
                Text("$ \(food.price)")
                    .font(.caption)
            }
            Spacer()
            Button(action: {self.showOrderSheet = true; print("Order received")}) {
                Text("Order")
                    .foregroundColor(.white)
            }
            .frame(width: 80, height: 50)
            .background(Color.red)
            .cornerRadius(10.0)
        }
        .padding(20)
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(showOrderSheet: .constant(false), food: foodData[0])
    }
}

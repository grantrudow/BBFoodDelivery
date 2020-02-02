//
//  DetailView.swift
//  BBFoodDelivery
//
//  Created by Grant Rudow on 2/2/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @State var showOrderSheet = false
    
    var currentCategory: Categories
    
    var body: some View {
        List(filterData(by: currentCategory)) { food in
            DetailRow(showOrderSheet: self.$showOrderSheet, food: food)
        }
        .navigationBarTitle(Text(categoryString(for: currentCategory)), displayMode: .inline)
        .sheet(isPresented: $showOrderSheet) {
            OrderForm(showOrderSheet: self.$showOrderSheet)
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    
    var currentCategory: Categories
    
    static var previews: some View {
        DetailView(currentCategory: .burger)
        }
        
    }


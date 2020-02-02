//
//  DetailView.swift
//  BBFoodDelivery
//
//  Created by Grant Rudow on 2/2/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var currentCategory: Categories
    
    var body: some View {
        List(filterData(by: currentCategory)) { food in
            DetailRow(food: food)
        }
        .navigationBarTitle(Text(categoryString(for: currentCategory)), displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    var currentCategory: Categories
    
    static var previews: some View {
        DetailView(currentCategory: .burger)
        }
        
    }


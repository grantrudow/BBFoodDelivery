//
//  Helper.swift
//  BBFoodDelivery
//
//  Created by Grant Rudow on 2/2/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import Foundation

enum Categories {
    
    case burger
    case pasta
    case pizza
    case dessert
    
}

func filterData(by category: Categories) -> [Food] {
    var filteredArray = [Food]()
    
    for food in foodData {
        if food.category == category {
            filteredArray.append(food)
        }
    }
    return filteredArray
}

func categoryString (for category: Categories) -> String {
    switch category {
    case .pizza:
        return "Pizza"
    case .burger:
        return "Burger"
    case .pasta:
        return "Pasta"
    case .dessert:
        return "Dessert"
    }
}

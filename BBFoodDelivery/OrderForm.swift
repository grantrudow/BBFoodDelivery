//
//  OrderForm.swift
//  BBFoodDelivery
//
//  Created by Grant Rudow on 2/2/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import SwiftUI



struct OrderForm: View {
    
    @State var specialRequests = false
    @State var specialRequestsContent = ""
    @State var orderAmount = 1
    @State var firstName = ""
    @State var lastName = ""
    @State var streetAddress = ""
    @State var city = ""
    @State var zip = ""
    @State var userFeedback = 0.0
    
    @Binding var showOrderSheet: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $specialRequests) {
                        Text("Any special requests?")
                        if specialRequests {
                            TextField("Enter your wishes", text: $specialRequestsContent)
                        }
                    }
                    Stepper(value: $orderAmount, in: 1...10, label: {
                        Text("Number of items: \(orderAmount)")
                    })
                }
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Street Address", text: $streetAddress)
                    TextField("City", text: $city)
                    TextField("Zip Code", text: $zip)
                }
                Section {
                    VStack {
                        Text("How happy were you with your experience?")
                            .padding(.top, 10)
                        HStack {
                            Image(systemName: "hand.thumbsdown")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Slider(value: $userFeedback, in: 0.0...10.0)
                            Image(systemName: "hand.thumbsup")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                    }
                }
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Placed")
                        }) {
                            Text("Place Order")
                        }
                        Spacer()
                    }
                }
            }
        .navigationBarTitle(Text("Welcome"))
        .navigationBarItems(leading:
            Button(action: { self.showOrderSheet = false}) {
                Text("Cancel")
        })
        }
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm(showOrderSheet: .constant(true))
    }
}

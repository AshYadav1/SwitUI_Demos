//
//  WeightView.swift
//  SwiftUI_Demo
//
//  Created by Ashish on 21/01/2023.
//

import SwiftUI

struct WeightView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack(alignment: .trailing, spacing: 10) {
               weightLabelView(title: "Weight", value: "17.6", unit: "lbs (8kg)")
                    .padding([.leading, .trailing], 20)
                    .padding(.top, 10)
                weightLabelView(title: "Est. Burn Area", value: "20.5", unit: "%")
                    .padding([.leading, .trailing], 20)
            }
            Text("Re-Calculate")
                .padding([.leading, .trailing], 10)
                .padding([.top, .bottom], 10)
                .background(Color(red: 196/255, green: 186/255, blue: 169/255))
                .cornerRadius(15)
                .padding(.bottom, 10)
                
        }
        .background(Color(red: 250/255, green: 244/255, blue: 222/255))
        .cornerRadius(15)
    }
    
    private func weightLabelView(title: String,
                                value: String,
                                 unit: String) -> some View {
        return HStack() {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 170, alignment: .leading)
                ZStack {
                    Text(value)
                        
                }
                .frame(width: 60, height: 40, alignment: .center)
                .background(Color(red: 244/255, green: 244/255, blue: 244/255))
                .cornerRadius(2.0)
                .border(Color(red: 237/255, green: 237/255, blue: 237/255), width: 1.0)
                Text(unit)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct WeightView_Previews: PreviewProvider {
    static var previews: some View {
        WeightView()
    }
}

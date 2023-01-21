//
//  FluidResusicationView.swift
//  SwiftUI_Demo
//
//  Created by Ashish on 21/01/2023.
//

import SwiftUI

struct FluidResusicationView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            timeIntervalView(image: "sun.haze",
                             title: "First 24 Hours")
            .offset(x: 15, y: 0)
            contentInfoView()
                .zIndex(-1)
                .offset(x: 0, y: -5)
        }
        .frame(width: .infinity)
    }
    
    private func timeIntervalView(image: String, title: String) -> some View {
        return ZStack {
            HStack {
                Image(systemName: "sun.haze")
                    .foregroundColor(.white)
                Text(title)
                    .foregroundColor(.white)
            }
            .padding(.leading, 20)
            .padding(.trailing, 60)
            .padding([.top, .bottom], 10)
        }
        .background(Color(red: 7/255, green: 165/255, blue: 193/255))
        .cornerRadius(12)
    }
    
    private func contentInfoView() -> some View {
        return ZStack {
            VStack(alignment: .leading) {
                Text("Ig Patient is <20Kg. add maintenance fluids.")
                    .font(.subheadline)
                    .foregroundColor(Color(red: 74/255, green: 59/255, blue: 63/255))
                    .offset(x: 12, y: 0)
                HStack(alignment: .top) {
                    Image(systemName: "doc.plaintext")
                        .resizable()
                        .frame(width: 30, height: 40)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.black)
                    VStack(alignment: .leading, spacing: 40) {
                        rateView(title: "Fluid Resuscitation", mlTitle: "186 - 247 ml LR",
                                 notes: "See Notes at bottom of page")
                        rateView(title: "Rates", mlTitle: "12 - 15 ml/hour LR",
                                 notes: "See Notes at bottom of page")
                    }
                }
            }
            .padding(.leading, 10)
            .padding(.trailing, 20)
            .padding(.top, 5)
            .frame(minWidth: 0, idealWidth: .infinity)
        }
        .padding(.top, 5)
        .padding(.bottom, 20)
        .frame(minWidth: 0, idealWidth: .infinity)
        .background(Color(red: 250/255, green: 244/255, blue: 222/255))
        .cornerRadius(15)
    }
    
    private func rateView(title: String,
                          mlTitle: String,
                          notes: String) -> some View {
        return VStack(alignment: .leading, spacing: 3) {
            HStack {
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 204/255, green: 118/255, blue: 28/255))
                Spacer()
                Text(mlTitle)
                    .font(.callout)
                    .fontWeight(.regular)
                    .foregroundColor(Color(red: 64/255, green: 59/255, blue: 43/255))
            }
            Text(notes)
                .foregroundColor(Color(red: 157/255, green: 160/255, blue: 140/255))
        }
    }
}

struct FluidResusicationView_Previews: PreviewProvider {
    static var previews: some View {
        FluidResusicationView()
    }
}

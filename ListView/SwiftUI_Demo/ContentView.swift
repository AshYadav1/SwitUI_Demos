//
//  ContentView.swift
//  SwiftUI_Demo
//
//  Created by Ashish on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0...8, id: \.self) { index in
                Section {
                    getRow(at: index)
                        .padding([.leading, .trailing], 15)
                        .padding([.top, .bottom], 10)
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowBackground(Color.clear)
                .listSectionSeparator(.hidden, edges: .all)
            }
            .listStyle(.plain)
            .navigationTitle("Demo")
        }
    }
    
    func getRow(at index: Int) -> some View {
        if index == 0 {
            return WeightView()
        } else {
            return FluidResusicationView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

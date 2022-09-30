 //
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Matthew Dolan on 2022-09-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // The Order of Modifiers Matter
        
//        Button("Hello, world!") {
//            print(type(of: self.body))
//        }
//        .background(.red)
//        .frame(width: 200, height: 200)
        
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

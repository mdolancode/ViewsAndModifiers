 //
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Matthew Dolan on 2022-09-30.
//

import SwiftUI

struct ContentView: View {
    // 1.
    var motto1: some View {
        Text("Draco dormiens")
    }
    
    let motto2 = Text("nunquam titillandus")
    
    // 2.
//    var spells: some View {
//        Group {
//            Text("Lumos")
//            Text("Obliviate")
//        }
//    }
    // 3.
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
   
    var body: some View {
        spells
        // 2.
//        HStack {
//            spells
//        }
        // 1.
//        VStack {
//            motto1
//                .foregroundColor(.red)
//            motto2
//                .foregroundColor(.blue)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

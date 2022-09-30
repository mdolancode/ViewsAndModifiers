 //
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Matthew Dolan on 2022-09-30.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    // If possible always use ternary conditional operator over an if else statement because it is less work for SwiftUI.
    var body: some View {
        Button("Hello, world!") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

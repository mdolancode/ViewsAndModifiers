 //
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Matthew Dolan on 2022-09-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Gryffindor")
            // child modifiers take precendence over environment modifiers, but not all child modifiers can override.
                .font(.largeTitle)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        // Environment modifier - Apply the modifier to the whole container.
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

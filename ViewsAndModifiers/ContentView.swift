 //
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Matthew Dolan on 2022-09-30.
//

import SwiftUI

// 2.
struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}
// 2.
extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}
// 1.
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10 ))
    }
}
// 1.
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
        // 1.
//        Text("LOL")
//            .titleStyle()
        // 2.
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

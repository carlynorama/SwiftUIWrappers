//
//  ContentView.swift
//  SwiftUIWrappers
//
//  Created by Carlyn Maw on 10/7/20.
//

import SwiftUI

struct ContentView: View {
    @State var text = "Gonna pass this text to the UIView"
    
    var body: some View {
        VStack {
            Spacer()
            WrapperView()
            TextView(text: $text).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

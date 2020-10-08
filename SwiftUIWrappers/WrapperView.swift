//
//  WrapperView.swift
//  SwiftUIWrappers
//
//  Created by Carlyn Maw on 10/7/20.
//

import SwiftUI

struct WrapperView: View {
    @State private var showingUIView = false

    var body: some View {
        VStack {
            Button("Pull Up UIView as a sheet") {
               self.showingUIView = true
            }
        }
        .sheet(isPresented: $showingUIView) {
            UIViewWrapper()
        }
    }
}

struct WrappedUIViewView_Previews: PreviewProvider {
    static var previews: some View {
        WrapperView()
    }
}

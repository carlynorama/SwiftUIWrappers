//
//  TextView.swift
//  SwiftUIWrappers
//
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-wrap-a-custom-uiview-for-swiftui
//

import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        return UITextView()
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

//struct TextView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextView(text: )
//    }
//}

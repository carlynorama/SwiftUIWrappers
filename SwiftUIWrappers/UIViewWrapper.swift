//
//  CustomUIViewWrapper.swift
//  SwiftUIWrappers
//
//  Created by Carlyn Maw on 10/7/20.
//

import SwiftUI

struct UIViewWrapper:UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    
    class WrappedUIViewCoordinator: NSObject, UINavigationControllerDelegate {
        var parent: UIViewWrapper
        init(parent: UIViewWrapper) {
            self.parent = parent
        }

    }

    class WrappedUIViewViewController:UIViewController {
        var delegate: WrappedUIViewCoordinator?
        override public func loadView() {
            view = UIView()
            view.isUserInteractionEnabled = true
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.numberOfLines = 0
            
            label.text = "This is a UIView. Tap anywhere to dismiss."
            label.textAlignment = .center
            
            let stackView = UIStackView()
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = .vertical
            stackView.spacing = 50
            stackView.addArrangedSubview(label)
            //stackView.addArrangedSubview(button)
            
            view.addSubview(stackView)
            
            NSLayoutConstraint.activate([
                //button.heightAnchor.constraint(equalToConstant: 50),
                stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
                stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
            
        }
        
        override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.dismiss(animated: true, completion: nil)        }
    }
    
    public func makeCoordinator() -> WrappedUIViewCoordinator {
        //return CameraCoordinator(parent: self)
        WrappedUIViewCoordinator(parent: self)
    }
    
    public func makeUIViewController(context: Context) -> WrappedUIViewViewController {
        let viewController = WrappedUIViewViewController()
        viewController.delegate = context.coordinator
        return viewController
    }

    public func updateUIViewController(_ uiViewController: WrappedUIViewViewController, context: Context) {

    }
    

    

}


struct CustomUIViewWrapper_Previews: PreviewProvider {
    static var previews: some View {
        UIViewWrapper()
    }
}

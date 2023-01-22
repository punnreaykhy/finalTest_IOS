//
//  hobieTextFieldView.swift
//  test
//
//  Created by Khy Punnreay on 23/11/22.
//

import SwiftUI


struct TextView: UIViewRepresentable {
    
    typealias UIViewType = UITextView
    var configuration = { (view: UIViewType) in }
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIViewType {
        UIViewType()
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<Self>) {
        configuration(uiView)
    }
}

public var getText: String!

struct hobieTextFieldView: View {
    var body: some View {
        TextView() {
            getText = $0.text
            $0.layer.cornerRadius = 6
            $0.backgroundColor = .lightGray
            $0.textColor = .black
            // Any other setup you like
        }
    }

    
}

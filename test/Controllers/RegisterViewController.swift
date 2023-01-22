//
//  RegisterViewController.swift
//  test
//
//  Created by Khy Punnreay on 18/11/22.
//

import UIKit

class RegisterViewController: UIViewController {
    

    private lazy var registerView: RegisterView = {
        let view = RegisterView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    
    override func loadView() {
        super.loadView()
        view.addSubview(registerView)
        registerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        registerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        registerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        registerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.14, green: 0.50, blue: 0.96, alpha: 1.00)
        title = "Register"

        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false

            view.addGestureRecognizer(tap)
    }
    
    // MARK: - Actions
    @objc private func close() {
        print("Close")
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    

}

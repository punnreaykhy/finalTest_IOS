//
//  ViewController.swift
//  test
//
//  Created by Khy Punnreay on 18/11/22.
//

import UIKit

class loginViewController: UIViewController {


    private let username = "Punnreay"
    private let phoneNumber = "1234"


    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var phoneNumTextField: UITextField!
    @IBOutlet weak var loginB: UIButton!
    
    override func loadView() {
        super.loadView()
        usernameTF.layer.borderColor = UIColor.black.cgColor
        usernameTF.layer.borderWidth = 0.5
        usernameTF.layer.cornerRadius = 8
        usernameTF.widthAnchor.constraint(equalToConstant: 330).isActive = true
        usernameTF.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        phoneNumTextField.layer.borderColor = UIColor.black.cgColor
        phoneNumTextField.layer.borderWidth = 0.5
        phoneNumTextField.layer.cornerRadius = 8
        phoneNumTextField.widthAnchor.constraint(equalToConstant: 330).isActive = true
        phoneNumTextField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginB.addTarget(self, action: #selector(login), for: .touchUpInside)

    }

    @objc private func login(){
        if usernameTF.text == username && phoneNumTextField.text == phoneNumber {
            changeRootWindow()
        }else {
            print("Invalid username or phone number!")
        }

        print(usernameTF.text ?? "")
        print(phoneNumTextField.text ?? "")
    }


    deinit {
        print("Login view controller dead!")
    }

    private func changeRootWindow() {
          // Have file SceneDelegate
            if let scene = UIApplication.shared.connectedScenes.first{
                guard let windowScene = (scene as? UIWindowScene) else { return }
                if let sceneDelegate = windowScene.delegate as? SceneDelegate {
                    let uikitVC = HomeViewController()
                    let nv = UINavigationController(rootViewController: uikitVC)
                    sceneDelegate.window?.rootViewController = nv
                    sceneDelegate.window?.makeKeyAndVisible()
                }
            }

            
             // Don't have file SceneDelegate
             if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                 let uikitVC = HomeViewController()
                 let nv = UINavigationController(rootViewController: uikitVC)
                 appDelegate.window?.rootViewController = nv
                 appDelegate.window?.makeKeyAndVisible()
             }
             
        }


}

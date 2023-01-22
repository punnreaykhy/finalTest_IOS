//
//  HomeViewController.swift
//  test
//
//  Created by Khy Punnreay on 18/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    private lazy var menuView = UIView()
    private lazy var name = UILabel()
    private lazy var registerB = UIButton()
    private lazy var AnchorB = UIButton()
    
    override func loadView() {
        super.loadView()
        menuView.translatesAutoresizingMaskIntoConstraints = false
        menuView.backgroundColor = .white
        view.addSubview(menuView)
        menuView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        menuView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        menuView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        menuView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        name.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(name)
        name.font = UIFont.boldSystemFont(ofSize: 26.0)
        name.text = "Khy Punnreay"
        name.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        name.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        registerB.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(registerB)
        registerB.setTitle("Register", for: .normal)
        registerB.backgroundColor = UIColor(red: 0.14, green: 0.50, blue: 0.96, alpha: 1.00)
        registerB.tintColor = .white
        registerB.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -10).isActive = true
        registerB.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        registerB.widthAnchor.constraint(equalToConstant: 125).isActive = true
        registerB.addTarget(self, action: #selector(didRegister),
        for: .touchUpInside)
        
        
        AnchorB.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(AnchorB)
        AnchorB.setTitle("Anchor", for: .normal)
        AnchorB.backgroundColor = UIColor(red: 0.14, green: 0.50, blue: 0.96, alpha: 1.00)
        AnchorB.tintColor = .white
        AnchorB.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 10).isActive = true
        AnchorB.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        AnchorB.widthAnchor.constraint(equalToConstant: 125).isActive = true
        AnchorB.addTarget(self, action: #selector(didAnchor),
        for: .touchUpInside)
        
        
    }

    
    override func viewDidLoad() {
//        func registerSelect(){registerSelect()}
        
        
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont(name: "AppleSDGothicNeo-Bold", size: 23)!
        ] //Set title color
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.14, green: 0.50, blue: 0.96, alpha: 1.00)
        view.backgroundColor = UIColor(red: 0.14, green: 0.50, blue: 0.96, alpha: 1.00)
        
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationItem.backButtonTitle = ""
        
        
        let vc = HomeViewController()
        vc.title = "Home"
        title = vc.title
        
    }
    
    @objc private func didRegister(){
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc private func didAnchor(){
        let vc = AnchorViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}


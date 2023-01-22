//
//  AnchorViewController.swift
//  test
//
//  Created by Khy Punnreay on 23/11/22.
//

import UIKit

class AnchorViewController: UIViewController {
    override func loadView() {
        super.loadView()
        
        ///1st row
        let blueView = UIView()
        blueView.backgroundColor = UIColor(red: 0.13, green: 0.22, blue: 0.78, alpha: 1.00)
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        blueView.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor(red: 0.76, green: 0.71, blue: 0.71, alpha: 1.00)
        grayView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(grayView)
        grayView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        grayView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        grayView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        grayView.bottomAnchor.constraint(equalTo: blueView.centerYAnchor).isActive = true
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        greenView.topAnchor.constraint(equalTo: grayView.bottomAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo: blueView.bottomAnchor).isActive = true
        
        
        ///2nd row
        let purpleView = UIView()
        purpleView.backgroundColor = UIColor(red: 0.46, green: 0.23, blue: 0.76, alpha: 1.00)
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(purpleView)
        purpleView.topAnchor.constraint(equalTo: blueView.bottomAnchor).isActive = true
        purpleView.bottomAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        purpleView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        purpleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        purpleView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        // whiteViews in purpleView
        let whiteView = UIView()
        whiteView.backgroundColor = .white
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.addSubview(whiteView)
        whiteView.centerYAnchor.constraint(equalTo: purpleView.centerYAnchor).isActive = true
        whiteView.leadingAnchor.constraint(equalTo: purpleView.leadingAnchor, constant: 20).isActive = true
        whiteView.trailingAnchor.constraint(equalTo: purpleView.centerXAnchor, constant: -20).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        whiteView.layer.cornerRadius = 7
        
        let whiteView1 = UIView()
        whiteView1.backgroundColor = .white
        whiteView1.translatesAutoresizingMaskIntoConstraints = false
        purpleView.addSubview(whiteView1)
        whiteView1.centerYAnchor.constraint(equalTo: purpleView.centerYAnchor).isActive = true
        whiteView1.leadingAnchor.constraint(equalTo: purpleView.centerXAnchor, constant: 20).isActive = true
        whiteView1.trailingAnchor.constraint(equalTo: purpleView.trailingAnchor, constant: -20).isActive = true
        whiteView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        whiteView1.layer.cornerRadius = 7
        
        
        ///3rd row
        let gray1View = UIView()
        gray1View.backgroundColor = UIColor(red: 0.20, green: 0.19, blue: 0.19, alpha: 1.00)
        gray1View.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gray1View)
        gray1View.topAnchor.constraint(equalTo: purpleView.bottomAnchor).isActive = true
        gray1View.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        gray1View.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        gray1View.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        let redView = UIView()
        redView.backgroundColor = UIColor(red: 0.83, green: 0.19, blue: 0.17, alpha: 1.00)
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        redView.topAnchor.constraint(equalTo: purpleView.bottomAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: gray1View.leadingAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        let pinkView = UIView()
        pinkView.backgroundColor = UIColor(red: 0.82, green: 0.46, blue: 0.46, alpha: 1.00)
        pinkView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pinkView)
        pinkView.topAnchor.constraint(equalTo: purpleView.bottomAnchor).isActive = true
        pinkView.leadingAnchor.constraint(equalTo: gray1View.trailingAnchor).isActive = true
        pinkView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pinkView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        
        ///4th row
        let purple1View = UIView()
        purple1View.backgroundColor = UIColor(red: 0.58, green: 0.52, blue: 0.89, alpha: 1.00)
        purple1View.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(purple1View)
        purple1View.topAnchor.constraint(equalTo: gray1View.bottomAnchor).isActive = true
        purple1View.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        purple1View.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        purple1View.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        let purple2View = UIView()
        purple2View.backgroundColor = UIColor(red: 0.75, green: 0.74, blue: 0.80, alpha: 1.00)
        purple2View.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(purple2View)
        purple2View.topAnchor.constraint(equalTo: gray1View.bottomAnchor).isActive = true
        purple2View.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        purple2View.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        purple2View.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        let blackView = UIView()
        blackView.backgroundColor = UIColor(red: 0.09, green: 0.06, blue: 0.20, alpha: 1.00)
        blackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blackView)
        blackView.topAnchor.constraint(equalTo: gray1View.bottomAnchor).isActive = true
        blackView.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        blackView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        let purple3View = UIView()
        purple3View.backgroundColor = UIColor(red: 0.14, green: 0.39, blue: 0.46, alpha: 1.00)
        purple3View.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(purple3View)
        purple3View.topAnchor.constraint(equalTo: gray1View.bottomAnchor).isActive = true
        purple3View.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        purple3View.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        purple3View.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        
        ///5th row
        let blue1View = UIView()
        blue1View.backgroundColor = UIColor(red: 0.21, green: 0.27, blue: 0.96, alpha: 1.00)
        blue1View.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blue1View)
        blue1View.topAnchor.constraint(equalTo: purple1View.bottomAnchor).isActive = true
        blue1View.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        blue1View.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        blue1View.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.14, green: 0.50, blue: 0.96, alpha: 1.00)
        title = "Anchor"
        // Do any additional setup after loading the view.
    }


}


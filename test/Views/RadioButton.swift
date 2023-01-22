//
//  RadioButton.swift
//  test
//
//  Created by Khy Punnreay on 18/11/22.
//

import UIKit

class RadioButton: UIControl {

    // MARK: - Properties
    private lazy var circleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var boldView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    open var isActive: Bool = false {
        didSet {
            updateRadio()
        }
    }
    
    // MARK: - Init
    init(title: String){
        super.init(frame: .zero)
        titleLabel.text = title
        
        self.addSubview(circleView)
        self.addSubview(titleLabel)
        
        circleView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        circleView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        circleView.widthAnchor.constraint(equalToConstant: 18).isActive = true
        circleView.heightAnchor.constraint(equalToConstant: 18).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: circleView.trailingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        
        circleView.addSubview(boldView)
        boldView.topAnchor.constraint(equalTo: circleView.topAnchor, constant: 4).isActive = true
        boldView.bottomAnchor.constraint(equalTo: circleView.bottomAnchor, constant: -4).isActive = true
        boldView.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 4).isActive = true
        boldView.trailingAnchor.constraint(equalTo: circleView.trailingAnchor, constant: -4).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        circleView.layer.cornerRadius = circleView.frame.width / 2
//        circleView.layer.cornerRadius = 18 / 2
        circleView.layer.borderWidth = 2
        circleView.layer.borderColor = UIColor.blue.cgColor
        
        boldView.layer.cornerRadius = 10 / 2
//        boldView.layer.borderWidth = 0
//        boldView.layer.borderColor = UIColor.blue.cgColor
    }
    
    // MARK: - Functions
    private func updateRadio() {
        if isActive {
            boldView.backgroundColor = .blue
        }else {
            boldView.backgroundColor = .clear
        }
    }

}

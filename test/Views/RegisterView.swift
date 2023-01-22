//
//  RegisterView.swift
//  test
//
//  Created by Khy Punnreay on 18/11/22.
//

import SwiftUI
import UIKit



class RegisterView: UIView {

    
    // MARK: - Properties
    private var allowLabel: UILabel!
    public var swichControl: UISwitch!
    public var nameTextField: UITextField!
    private var dobLabel: UILabel!
    public var datePicker: UIDatePicker!
    private var hobieLabel: UILabel!
    public var hobieTextView: UITextView!
    public var registerButton: UIButton!
    
    
    // MARK: - Init
    init() {
        super.init(frame: .zero)
        let grayView = UIView()
        grayView.backgroundColor = UIColor(red: 0.73, green: 0.73, blue: 0.73, alpha: 1.00)
        grayView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(grayView)
        grayView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        grayView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        grayView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        grayView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        allowLabel = UILabel()
        allowLabel.textColor = .white
        allowLabel.translatesAutoresizingMaskIntoConstraints = false
        grayView.addSubview(allowLabel)
        allowLabel.centerYAnchor.constraint(equalTo: grayView.centerYAnchor).isActive = true
        allowLabel.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 15).isActive = true
        allowLabel.text = "Allow App share your data."
        
        swichControl = UISwitch()
        swichControl.translatesAutoresizingMaskIntoConstraints = false
        grayView.addSubview(swichControl)
        swichControl.leadingAnchor.constraint(equalTo: allowLabel.trailingAnchor, constant: 20).isActive = true
        swichControl.centerYAnchor.constraint(equalTo: grayView.centerYAnchor).isActive = true
        swichControl.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -15).isActive = true
        nameTextField = UITextField()
        nameTextField.setLeftPaddingPoints(15)
        nameTextField.placeholder = "Name"
        nameTextField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        nameTextField.layer.cornerRadius = 6
        nameTextField.layer.borderWidth = 1.5
        nameTextField.layer.borderColor = UIColor.darkGray.cgColor
        
        self.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.topAnchor.constraint(equalTo: allowLabel.bottomAnchor, constant: 50).isActive = true
        nameTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 260).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        dobLabel = UILabel()
        dobLabel.translatesAutoresizingMaskIntoConstraints = false
        dobLabel.text = "Date of Birth:"
        self.addSubview(dobLabel)
        dobLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 30).isActive = true
        dobLabel.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor, constant: -20).isActive = true
        
        datePicker = UIDatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.datePickerMode = UIDatePicker.Mode.date

        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } else {
            // Fallback on earlier versions
        }
        self.addSubview(datePicker)
        datePicker.topAnchor.constraint(equalTo: dobLabel.bottomAnchor, constant: 10).isActive = true
        datePicker.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        datePicker.widthAnchor.constraint(equalToConstant: 250).isActive = true
        datePicker.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        
        hobieLabel = UILabel()
        hobieLabel.translatesAutoresizingMaskIntoConstraints = false
        hobieLabel.text = "Hobie:"
        self.addSubview(hobieLabel)
        hobieLabel.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 30).isActive = true
        hobieLabel.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor, constant: -20).isActive = true
        
        hobieTextView = UITextView()
        hobieTextView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(hobieTextView)
        hobieTextView.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        hobieTextView.layer.cornerRadius = 6
        hobieTextView.leadingAnchor.constraint(equalTo: hobieLabel.leadingAnchor).isActive = true
        hobieTextView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        hobieTextView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        hobieTextView.topAnchor.constraint(equalTo: hobieLabel.bottomAnchor, constant: 10).isActive = true
        hobieTextView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        registerButton = UIButton()
        registerButton.backgroundColor = UIColor(red: 0.14, green: 0.50, blue: 0.96, alpha: 1.00)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("Register", for: .normal)
        self.addSubview(registerButton)
        registerButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        registerButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        registerButton.addTarget(self, action: #selector(registerClick), for: .touchUpInside)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Actions
    
    @objc private func registerClick(){
        var switchValue: Int
        if(swichControl.isOn){
            switchValue = 1
        }else {switchValue = 0}
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        print("\n\nAllow share:" ,switchValue,
              ", Name:" ,nameTextField.text ?? "",
              ", DOB:" ,dateFormatter.string(from: datePicker.date),
              ", Hobie:" ,hobieTextView.text ?? "\n")
    }
    
    
    
}


extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

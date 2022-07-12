//
//  ViewController.swift
//  NewlyCoinedWord
//
//  Created by 이현호 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hashTagButton1: UIButton!
    
    @IBOutlet weak var hashTagButton2: UIButton!
    
    @IBOutlet weak var hashTagButton3: UIButton!
    
    @IBOutlet weak var hashTagButton4: UIButton!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var newLanguage = ["윰차":"유모차의 준말", "실매":"실질적 매니저의 준말", "만반잘부":"만나서 반가워 잘부탁해", "꾸안꾸":"꾸민듯 안꾸민듯"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButton(buttonName: hashTagButton1, buttonTitle: "윰차")
        setButton(buttonName: hashTagButton2, buttonTitle: "실매")
        setButton(buttonName: hashTagButton3, buttonTitle: "만반잘부")
        setButton(buttonName: hashTagButton4, buttonTitle: "꾸안꾸")
        
        userTextField.borderStyle = .line
        userTextField.layer.borderColor = UIColor.black.cgColor
        userTextField.layer.borderWidth = 3
        
    }

    func setButton(buttonName: UIButton, buttonTitle: String) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.layer.cornerRadius = 10
        buttonName.layer.borderWidth = 1
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.titleLabel?.numberOfLines = 1
        buttonName.tintColor = .black
    }
    
    func labelName(description: String){
        descriptionLabel.text = description
    }
    
    
    @IBAction func button1Cliked(_ sender: UIButton) {
        
        labelName(description: "유모차의 준말")
        
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        
        labelName(description: "실시간 매니저의 준말")
        
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        
        labelName(description: "만나서 반가워 잘부탁해의 준말")
        
    }
    
    @IBAction func button4Clicked(_ sender: UIButton) {
        
        labelName(description: "꾸민듯 안꾸민듯의 준말")
        
    }
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        
        
    }
    
    @IBAction func returnKeyClicked(_ sender: UITextField) {
        
        
        
    }
    
    
}


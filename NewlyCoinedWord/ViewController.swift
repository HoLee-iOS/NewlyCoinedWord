//
//  ViewController.swift
//  NewlyCoinedWord
//
//  Created by 이현호 on 2022/07/11.
//

import UIKit

//신조어 검색리스트를 열거형 타입으로 만듦
enum NewList: String {
    case 윰차
    case 실매
    case 만반잘부
    case 꾸안꾸
    case 삼귀자
    
    var description: String {
        switch self {
        case .윰차: return "유모차"
        case .실매: return "실질적 매니저"
        case .만반잘부: return "만나서 반가워 잘부탁해"
        case .꾸안꾸: return "꾸민듯 안꾸민듯"
        case .삼귀자: return "사귀기의 전 단계"
        }
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var hashTagButton1: UIButton!
    
    @IBOutlet weak var hashTagButton2: UIButton!
    
    @IBOutlet weak var hashTagButton3: UIButton!
    
    @IBOutlet weak var hashTagButton4: UIButton!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //열거형 타입으로 만든 신조어를 변수에 넣어줌
    var newText1: NewList = .윰차
    var newText2: NewList = .실매
    var newText3: NewList = .만반잘부
    var newText4: NewList = .꾸안꾸
    var newText5: NewList = .삼귀자
    
    
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
    
    //버튼의 속성을 셋팅하는 함수
    func setButton(buttonName: UIButton, buttonTitle: String) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.layer.cornerRadius = 10
        buttonName.layer.borderWidth = 1
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.titleLabel?.numberOfLines = 1
        buttonName.tintColor = .black
    }
    
    //레이블에 해당 단어에 대한 설명이 나오게 해주는 함수
    func labelName(description: String){
        descriptionLabel.text = description
    }
    
    //해시태그 버튼을 클릭하면 해당 언어에 대한 설명이 나오게 해줌
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
    
    //뷰화면을 탭하면 가상 키보드가 내려가게 해줌
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    //전송버튼을 클릭하면 userTextField의 내용을 스위치문을 이용하여 열거형의 모든 케이스와 비교함
    //해당 케이스와 맞는 설명을 설명 레이블에 할당함
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        
        let text = userTextField.text
        
        switch text {
        case newText1.rawValue:
            descriptionLabel.text = newText1.description
        case newText2.rawValue:
            descriptionLabel.text = newText2.description
        case newText3.rawValue:
            descriptionLabel.text = newText3.description
        case newText4.rawValue:
            descriptionLabel.text = newText4.description
        case newText5.rawValue:
            descriptionLabel.text = newText5.description
        default:
            print("저도 몰러유😂")
        }
        
    }
    
    //가상키보드의 리턴키를 클릭했을때도 위와 같은 작동을 하게 만들어줌
    @IBAction func returnKeyClicked(_ sender: UITextField) {

        let text = userTextField.text

        switch text {
        case newText1.rawValue:
            descriptionLabel.text = newText1.description
        case newText2.rawValue:
            descriptionLabel.text = newText2.description
        case newText3.rawValue:
            descriptionLabel.text = newText3.description
        case newText4.rawValue:
            descriptionLabel.text = newText4.description
        case newText5.rawValue:
            descriptionLabel.text = newText5.description
        default:
            print("저도 몰러유😂")
        }

    }
    
}



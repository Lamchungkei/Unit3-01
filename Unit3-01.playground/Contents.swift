
// Created by: Kay Lin
// Created on: 10th-Oct-2017
// Created for: ICS3U
// This program shows Number Guessing Game


import PlaygroundSupport
import UIKit

class ViewController : UIViewController, UITextFieldDelegate {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var checkButton : UIButton!
    var numberEnteredTextField : UITextField!
    var getItCorrectLabel : UILabel!
    var randomNumberLabel : UILabel!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        // random number label
        randomNumberLabel = UILabel()
        randomNumberLabel.text = "Enter the number"
        view.addSubview(randomNumberLabel)
        randomNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        randomNumberLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        randomNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // numberEnteredTextField
        numberEnteredTextField = UITextField()
        numberEnteredTextField.bounds = CGRect(x: 0, y: 0, width: view.bounds.width / 2, height: 50)
        numberEnteredTextField.backgroundColor = UIColor.lightGray
        numberEnteredTextField.borderStyle = UITextBorderStyle.roundedRect
        numberEnteredTextField.font = UIFont.systemFont(ofSize: 17)
        numberEnteredTextField.textAlignment = .center
        numberEnteredTextField.placeholder = "my number"
        numberEnteredTextField.clearButtonMode = UITextFieldViewMode.whileEditing
        numberEnteredTextField.delegate = self
        view.addSubview(numberEnteredTextField)
        numberEnteredTextField.translatesAutoresizingMaskIntoConstraints = false
        numberEnteredTextField.topAnchor.constraint(equalTo: randomNumberLabel.bottomAnchor, constant: 20).isActive = true
        numberEnteredTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // check button
        checkButton = UIButton()
        checkButton.setTitle("Check", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.addTarget(self, action: #selector(answer), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: numberEnteredTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // get it correct label
        getItCorrectLabel = UILabel()
        
        // getItCorrectLabel.text = 
        
        view.addSubview(getItCorrectLabel)
        getItCorrectLabel.translatesAutoresizingMaskIntoConstraints = false
        getItCorrectLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        getItCorrectLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
    }
    func answer() {
        let MY_NUMBER = 5
        var numberEntered = Int(numberEnteredTextField.text!)
        if numberEntered == MY_NUMBER {
            self.getItCorrectLabel.text = "Get it correct!"
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
        
    }
}


// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()



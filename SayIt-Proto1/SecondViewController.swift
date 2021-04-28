//
//  SecondViewController.swift
//  SayIt-Proto1
//
//  Created by Ardyansyah Wijaya on 27/04/21.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var yourNameLabel: UILabel!
    @IBOutlet weak var yourTopicLabel: UILabel!
    @IBOutlet weak var yourEnemyLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var topicTextField: UITextField!
    @IBOutlet weak var enemyTextField: UITextField!
    
    @IBOutlet weak var resultButton: UIButton!
    
    var selectedOption: String = ""
    var selectedTopic: String = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
        topicTextField.delegate = self
        enemyTextField.delegate = self
        resultButton.isEnabled = false
        resultButton.alpha = 0.5
                
//        if (nameTextField.text?.isEmpty == true || topicTextField.text?.isEmpty == true || enemyTextField.text?.isEmpty == true) {
//            resultButton.isUserInteractionEnabled = false
//        } else {
//            resultButton.isUserInteractionEnabled = true
//        }
        
        if (selectedOption == "0") {
            selectedTopic = "type1"
            yourNameLabel.text = "Name1"
            yourTopicLabel.text = "Topic1"
            yourEnemyLabel.text = "Enemy1"
        } else if (selectedOption == "1") {
            selectedTopic = "type2"
            yourNameLabel.text = "Name2"
            yourTopicLabel.text = "Topic2"
            yourEnemyLabel.text = "Enemy2"
        } else if (selectedOption == "2") {
            selectedTopic = "type3"
            yourNameLabel.text = "Name3"
            yourTopicLabel.text = "Topic3"
            yourEnemyLabel.text = "Enemy3"
        } else if (selectedOption == "3") {
            selectedTopic = "type4"
            yourNameLabel.text = "Name4"
            yourTopicLabel.text = "Topic4"
            yourEnemyLabel.text = "Enemy4"
        }
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
    let nameText = (nameTextField.text! as NSString).replacingCharacters(in: range, with: string)
    
    if (nameText.isEmpty) {
     resultButton.isEnabled = false
     resultButton.alpha = 0.5
    } else {
     resultButton.isEnabled = true
     resultButton.alpha = 1.0
    }
     return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showResult") {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.topicType = selectedTopic
            thirdVC.resultName = nameTextField.text!
            thirdVC.resultTopic = topicTextField.text!
            thirdVC.resultEnemy = enemyTextField.text!

        }
    }
            
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

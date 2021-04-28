//
//  ThirdViewController.swift
//  SayIt-Proto1
//
//  Created by Ardyansyah Wijaya on 27/04/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!
    
    var topicType: String = ""
    var resultName: String = ""
    var resultTopic: String = ""
    var resultEnemy: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (topicType == "type1") {
            resultTextView.text = "TYPE 1 PROTO namanya adalah \(resultName), dengan topic \(resultTopic), dan enemynya \(resultEnemy)"
        } else if (topicType == "type2") {
            resultTextView.text = "TYPE 2 PROTO namanya adalah \(resultName), dengan topic \(resultTopic), dan enemynya \(resultEnemy)"
        } else if (topicType == "type3") {
            resultTextView.text = "TYPE 3 PROTO namanya adalah \(resultName), dengan topic \(resultTopic), dan enemynya \(resultEnemy)"
        } else if (topicType == "type4") {
            resultTextView.text = "TYPE 4 PROTO namanya adalah \(resultName), dengan topic \(resultTopic), dan enemynya \(resultEnemy)"
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

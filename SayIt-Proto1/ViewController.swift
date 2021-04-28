//
//  ViewController.swift
//  SayIt-Proto1
//
//  Created by Ardyansyah Wijaya on 27/04/21.
//

import UIKit

var selectionOption = [
    "Asssssss",
    "Bsssssss",
    "Cssssss",
    "Dssssss",
    "Esssssss",
    "Fssssss"
]
var selectedOptionRow: Int = 0

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var selectionCell: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectionOption.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectCell", for: indexPath)
        //Configure Cell
        cell.textLabel?.text = selectionOption[indexPath.row]
        
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedOptionRow = indexPath.row
        self.performSegue(withIdentifier: "showTellMore", sender: indexPath);

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showTellMore") {
            let secondVC = segue.destination as! SecondViewController
            secondVC.selectedOption = String(selectedOptionRow)
            }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        selectionCell.dataSource = self
        selectionCell.delegate = self
        
        // Do any additional setup after loading the view.
    }


}


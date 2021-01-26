//
//  ResultViewController.swift
//  Exchange
//
//  Created by 이재영 on 2021/01/26.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var beforeExchange: UILabel!
    @IBOutlet weak var afterExchange: UILabel!
    @IBOutlet weak var resultUnit: UILabel!
    var unit: String?
    var beforeValue: String?
    var afterValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beforeExchange.text = String(beforeValue ?? "0.0")
        afterExchange.text = String(afterValue ?? "0.0")
        resultUnit.text = unit
    }
    
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

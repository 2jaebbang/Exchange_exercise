//
//  ViewController.swift
//  Exchange
//
//  Created by 이재영 on 2021/01/26.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var exchangeValue: UILabel!
    @IBOutlet weak var enterValue: UITextField!
    
    let exchange = ["USA", "Japan", "China"]
    var value = 0.0
    var result = "0.0"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        enterValue.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        exchangeValue.text = exchange[0]
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return exchange.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return exchange[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        exchangeValue.text = exchange[row]
    }
    

    @IBAction func calculatePressed(_ sender: UIButton) {
        let country = exchangeValue.text!
        let value = Float(enterValue.text ?? "0.0")
        calculateBrain.calculateExchange(country: country, exchangeValue: value ?? 0.0)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            //destinationVC.country = calculateBrain.getCountry()
            destinationVC.beforeValue = enterValue.text
            destinationVC.afterValue = calculateBrain.getExchangeValue()
            destinationVC.unit = calculateBrain.getUnit()
        }
    }
    
    

}


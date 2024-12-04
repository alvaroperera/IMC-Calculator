//
//  ViewController.swift
//  IMC Calculator
//
//  Created by Álvaro Perera on 4/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var labelStringResult: UILabel!
    @IBOutlet weak var resultText: UILabel!
    @IBAction func calculateIMC(_ sender: UIButton) {
        let height = Float(heightText.text!) ?? 0
        let weight = Float(weightText.text!) ?? 0
        let imc = weight / (height/100 * height/100)
        
        if imc >= 30.00 {
            resultText.textColor = .red
            resultText.text = "\(imc)"
            labelStringResult.textColor = .red
            labelStringResult.text = "Obeso"
        } else if imc >= 25.00 {
            resultText.textColor = .yellow
            resultText.text = "\(imc)"
            labelStringResult.textColor = .yellow
            labelStringResult.text = "Sobrepeso"
        } else if imc >= 18.49 {
            resultText.textColor = .green
            resultText.text = "\(imc)"
            labelStringResult.textColor = .green
            labelStringResult.text = "Normal"
        } else {
            resultText.textColor = .blue
            resultText.text = "\(imc)"
            labelStringResult.textColor = .blue
            labelStringResult.text = "Bajo peso"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


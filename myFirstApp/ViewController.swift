//
//  ViewController.swift
//  myFirstApp
//
//  Created by Vitaly Spiryakov on 31.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scoreLabel: UILabel!
    var score: Int = 0

    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonClear: UIButton!


    @IBAction func buttonPlusTaped(sender: UIButton) {
        if score != 10 {
            score += 1
            scoreLabel.text = "\(score)"
            enebleButtonMinus()
        } else {
            disableButtonPlus()
            showAlertAction()
        }
    }

    @IBAction func buttonMinusTaped(sender: UIButton) {
        if score != -10 {
            score -= 1
            scoreLabel.text = "\(score)"
            enebleButtonPluse()
        } else {
            disableButtonMinus()
            showAlertAction()
        }
    }

    @IBAction func buttonClear(sender: UIButton) {
        score = 0
        scoreLabel.text = "\(score)"
        enebleButtonMinus()
        enebleButtonPluse()
    }

   func showAlertAction() {
        let alert = UIAlertController(title: "Что то не так", message: "Привышено значение \(score)", preferredStyle: .alert)
       let okButton = UIAlertAction(title: "Ok", style: .default, handler: {_ in print("ну что то")})
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    func disableButtonPlus() {
        buttonPlus.isEnabled = false
        buttonMinus.isEnabled = true
    }

    func disableButtonMinus() {
        buttonMinus.isEnabled = false
        buttonPlus.isEnabled = true
    }
    
    func enebleButtonPluse() {
        buttonPlus.isEnabled = true
    }
    
    func enebleButtonMinus() {
        buttonMinus.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(score)"
        scoreLabel.backgroundColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



//
//  ViewController.swift
//  billSplitting
//
//  Created by Amr Abdaldayem on 02/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmmountText: UITextField!
    @IBOutlet var persentageButtons: [UIButton]!
    @IBOutlet weak var splitterLable: UILabel!
    @IBOutlet weak var splitterButton: UIStepper!
    
    
    var billSplittingBrain = BillSplittingBrain(ammount: 0.0, tip: 0, splitter: 1)
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        splitterLable.text = "1"
        
        for button in self.persentageButtons {
            button.titleLabel?.numberOfLines = 1
            button.titleLabel?.adjustsFontSizeToFitWidth = true
           
        }


    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: nil){ _ in
            for button in self.persentageButtons {
                button.titleLabel?.numberOfLines = 1
                button.titleLabel?.adjustsFontSizeToFitWidth = true
                print(button.titleLabel!)
            }
            
        }
    }
    
    @IBAction func tipSelected(_ sender: UIButton) {
        sender.titleLabel?.adjustsFontSizeToFitWidth = true
        switch sender.titleLabel?.text! {
        
        case "0%":
            billSplittingBrain.setTip(tip: 0)
        
        case "10%":
            billSplittingBrain.setTip(tip: 10)
        
        case "20%":
            billSplittingBrain.setTip(tip: 20)
        
        default:
            billSplittingBrain.setTip(tip: 0)
        }
    }
    
    
    @IBAction func splitterButtonPressed(_ sender: AnyObject) {
        splitterLable.text = String(Int(splitterButton.value))
        billSplittingBrain.setSplitter(splitter: Int(splitterButton.value))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.billSplittingBrain = self.billSplittingBrain
        
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billSplittingBrain.setAmmount(ammount: Float ( billAmmountText.text!) ?? 0.0)
        
        performSegue(withIdentifier: "calculateTransition", sender: self)
    }
    
}


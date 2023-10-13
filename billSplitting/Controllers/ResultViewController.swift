//
//  ResultViewController.swift
//  billSplitting
//
//  Created by Amr Abdaldayem on 03/07/2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalPerPersonLable: UILabel!
    @IBOutlet weak var ammountLable: UILabel!
    
    @IBOutlet weak var splitPhraseLable: UILabel!
    
    @IBOutlet weak var recalculateButton: UIButton!
    
    var billSplittingBrain = BillSplittingBrain(ammount: 0.0, tip: 0, splitter: 0)
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        recalculateButton.titleLabel?.adjustsFontSizeToFitWidth = true
        recalculateButton.layer.cornerRadius = 5
        var phText: String = "Split between " + String(billSplittingBrain.getSplitter()) + " people, with " +  String(billSplittingBrain.getTip()) + "% tip."
        
        ammountLable.text = String ( billSplittingBrain.calculateTotaPerPerson())
        splitPhraseLable.text = phText
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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

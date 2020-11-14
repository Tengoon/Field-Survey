//
//  FieldSurveyDetailsViewController.swift
//  Field Survey
//
//  Created by Andrew Brown on 11/13/20.
//

import UIKit

class FieldSurveyDetailsViewController: UIViewController {

    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var creatureLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var locationTextView: UITextView!
    
    var fieldObservation : Observation?
    
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Observation"
        
        if let fieldObservation = fieldObservation {
                   creatureLabel.text = fieldObservation.title
                   timeLabel.text = dateFormatter.string(from: fieldObservation.date)
                   fieldIconImageView.image = UIImage(named: fieldObservation.classification.rawValue)
                   locationTextView.text = fieldObservation.description
        
        // Do any additional setup after loading the view.
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
}

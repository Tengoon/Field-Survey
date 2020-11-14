//
//  FieldSurveyDetailsViewController.swift
//  Field Survey
//
//  Created by Andrew Brown on 11/13/20.
//

import UIKit

class FieldSurveyDetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var createLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var descField: UITextView!
    
    var fieldObservation : Observation?
    
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Observation"
        
        if let fieldObservation = fieldObservation {
                    createLabel.text = fieldObservation.title
                    timeLabel.text = dateFormatter.string(from: fieldObservation.date)
                    imageView.image = UIImage(named: fieldObservation.classification.rawValue)
                    descField.text = fieldObservation.description
        
        
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


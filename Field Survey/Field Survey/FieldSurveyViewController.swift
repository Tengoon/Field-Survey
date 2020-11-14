//
//  FieldSurveyViewController.swift
//  Field Survey
//
//  Created by Andrew Brown on 11/13/20.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var surveyTableView: UITableView!
    var dateFormatter = DateFormatter()
        
    let jsonFileName = "field_observations"
    var surveyObservations: SurveyObservations?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Field Observations"
        surveyTableView.rowHeight = 75
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        surveyObservations = SurveyLoader.load(jsonFileName: jsonFileName)
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return surveyObservations?.observations.count ?? 0
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = surveyTableView.dequeueReusableCell(withIdentifier: "fieldCell", for: indexPath)
        
        if let cell = cell as? FieldSurveyTableViewCell,
            let surveyObservation = surveyObservations?.observations[indexPath.row]{
                cell.createLabel.text = surveyObservation.title
                cell.timeLabel.text = dateFormatter.string(from: surveyObservation.date)
                cell.surveyiconImageView.image = UIImage(named: surveyObservation.classification.rawValue)
                }
        
            return cell
        
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailsViewController,
           let selectedIndexPath = surveyTableView.indexPathForSelectedRow {
            destination.fieldObservation = surveyObservations?.observations[selectedIndexPath.row]
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

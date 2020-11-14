//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Andrew Brown on 11/13/20.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var surveyiconImageView: UIImageView!
    @IBOutlet weak var createLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

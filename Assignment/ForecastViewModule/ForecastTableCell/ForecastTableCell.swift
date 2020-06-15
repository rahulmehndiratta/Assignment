//
//  ForecastTableCell.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit

class ForecastTableCell: UITableViewCell {

    static var ID = "ForecastTableCell"
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var containerview: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func populate(data: Forecast?) {
        if let name = data?.name, !name.isEmpty {
            titleLabel.text = String(repeating: " ", count: 3) + name
        } else {
            titleLabel.text = String(repeating: " ", count: 3) + (data?.date?.changeDateFormat(fromFromat: .yyyyMMddHHMMSS, toFormat: .hhmm_a) ?? "")
        }
        descriptionLabel.attributedText = getAttributedString(placeholder: "Sky: ", actualString: (data?.weather?.description ?? "").capitalized)
        if let min = data?.temp?.min, let max = data?.temp?.max {
            tempLabel.attributedText = getAttributedString(placeholder: "Temp (max - min)K: ", actualString: "\(max) - \(min)")
        }
        windLabel.attributedText = getAttributedString(placeholder: "Wind Speed (miles/hour): ", actualString: (data?.wind?.speed?.description ?? ""))
        containerview.backgroundColor = .white
        containerview.roundedBorders(radius: 10)
        containerview.getShadow(radius: 2)
        titleLabel.roundedCorner(cornerRadii: 10, corners: [.layerMaxXMinYCorner, .layerMinXMinYCorner])
    }
    
    func getAttributedString(placeholder: String, actualString: String) -> NSAttributedString {
        let string = placeholder + actualString
        let attibutedString = NSMutableAttributedString(string: string)
        let placeholderRange = (string as NSString).range(of: placeholder)
        let actualStringRange = (string as NSString).range(of: actualString)
        attibutedString.addAttributes([NSAttributedString.Key.font: UIFont.regularFont.withSize(14)], range: placeholderRange)
        attibutedString.addAttributes([NSAttributedString.Key.font: UIFont.regularFont.withSize(15)], range: actualStringRange)
        attibutedString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor.placeholderColor], range: placeholderRange)
        attibutedString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], range: actualStringRange)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.firstLineHeadIndent = 5
        attibutedString.addAttributes([NSAttributedString.Key.paragraphStyle: paragraphStyle], range: NSRange(location: 0, length: string.count - 1))
        return attibutedString
        
    }
    
}

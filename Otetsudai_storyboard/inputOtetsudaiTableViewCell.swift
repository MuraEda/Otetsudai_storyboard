//
//  inputOtetsudaiTableViewCell.swift
//  Otetsudai_storyboard
//
//  Created by angelakos on 2021/05/30.
//

import UIKit

class inputOtetsudaiTableViewCell: UITableViewCell,UIPickerViewDelegate,UIPickerViewDataSource {
    
    

    @IBOutlet weak var pointTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }

}

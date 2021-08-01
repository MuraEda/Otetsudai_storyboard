//
//  OtetsudaiSentakuViewController.swift
//  Otetsudai_storyboard
//
//  Created by Murase Yusuke on 2021/05/01.
//

import UIKit

class OtetsudaiSentakuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let OtetsudaiArray = ["ごみ出し","洗濯","掃除","炊事"]
    let pointNumArray = Array(0..<6)

    @IBOutlet weak var OtetsudaiSentakuTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OtetsudaiSentakuTable.delegate = self
        OtetsudaiSentakuTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    @IBAction func star(_ sender: CheckBox) {
        
        print(sender.isChecked)
        
    }
    
    //Table関連
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OtetsudaiArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ViewVC = storyboard?.instantiateViewController(withIdentifier: "Main")  as! ViewController
        ViewVC.otehyouji = OtetsudaiArray[indexPath.row]
            navigationController?.pushViewController(ViewVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! inputOtetsudaiTableViewCell
        
//        let cell = OtetsudaiSentakuTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = OtetsudaiArray[indexPath.row]
        return cell
    }

}

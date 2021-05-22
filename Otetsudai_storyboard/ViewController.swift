//
//  ViewController.swift
//  Otetsudai_storyboard
//
//  Created by Murase Yusuke on 2021/05/01.
//
//開けたよ
import UIKit

class ViewController: UIViewController{

    
    @IBOutlet weak var OtetsudaiHyouji: UILabel!
    
    @IBOutlet weak var child_name: UILabel!
    var otehyouji = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        child_name.text = "0"
        OtetsudaiHyouji.text = otehyouji
        
        // Do any additional setup after loading the view.
    }


    @IBAction func otetsudai_push(_ sender: Any) {
        let OtetsudaiSentakuVC = storyboard?.instantiateViewController(withIdentifier: "OtetsudaiSentaku")  as! OtetsudaiSentakuViewController
                    navigationController?.pushViewController(OtetsudaiSentakuVC, animated: true)
    }
    
    //Table関連
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
}


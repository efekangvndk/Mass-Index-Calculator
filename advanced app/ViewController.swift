//
//  ViewController.swift
//  advanced app
//
//  Created by Efekan Güvendik on 22.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var kılo: UITextField!
    @IBOutlet weak var boy: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        if let myBoy = Int(boy.text!){
            let  myResultBoy = Double(myBoy * myBoy)
            if let myKılo = Double(kılo.text!){
                var  myResult = Double(myKılo / myResultBoy) * 10000
                var roundedResult = round(myResult * 100) / 100.0
                result.text = String(roundedResult)
                if myResult < 18.5{
                    status.text = "İdeal kilonun altında"
                }else if 18.5 < myResult && myResult < 24.9 {
                    status.text = "İdael kilodasınız "
                }else if 24.9 < myResult && myResult < 29{
                    status.text = "İdeal kilonun üstünde"
                }else if 30 < myResult && myResult < 39.9{
                    status.text = "İdeal kilonun çok üstünde (obez)"
                }else if myResult > 40 {
                    status.text = "tehlikeli kilo."
                }
            }
        }
    }
    
}

    

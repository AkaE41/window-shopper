//
//  ViewController.swift
//  window-shopper
//
//  Created by Khaled on 4/22/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: currencyTxtField!
    @IBOutlet weak var priceTxt: currencyTxtField!
    @IBOutlet weak var resultLBL: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLBL.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func calculate (){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLBL.isHidden = false
                hoursLbl.isHidden = false
                resultLBL.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLBL.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    
    }
    
}


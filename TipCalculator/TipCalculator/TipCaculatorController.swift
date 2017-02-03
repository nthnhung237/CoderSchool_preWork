//
//  TipCaculatorController.swift
//  TipCalculator
//
//  Created by HỒNG NHUNG on 12/14/16.
//  Copyright © 2016 HỒNG NHUNG. All rights reserved.
//

import UIKit

var bill: Double = 0

var strNameFont : String = "AppleSDGothicNeo-Bold"

var size: Double = 35

var ColorTitle : UIColor!

var BackgroundTitle: UIColor!

class TipCaculatorController: UIViewController {

    @IBOutlet var lbShow: UILabel!
    
    @IBOutlet var btnDelete: UIButton!
    
    @IBOutlet var btSetting: UIBarButtonItem!
    
    @IBOutlet var btnNext: UIButton!
    
    @IBOutlet var btn1 : UIButton!
    
    @IBOutlet var btn2 : UIButton!
    
    @IBOutlet var btn3 : UIButton!
    
    @IBOutlet var btn4 : UIButton!
    
    @IBOutlet var btn5 : UIButton!
    
    @IBOutlet var btn6 : UIButton!
    
    @IBOutlet var btn7 : UIButton!
    
    @IBOutlet var btn8 : UIButton!
    
    @IBOutlet var btn9 : UIButton!
    
    @IBOutlet var btn0 : UIButton!
    
    @IBOutlet var btn : UIButton!
    
    var strNumber : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "TIP CALCULATOR";
        self.navigationItem.hidesBackButton = true;
        self.setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup(){
        
        btn.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn0.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn1.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn2.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn3.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn4.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn5.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn6.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn7.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn8.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn9.titleLabel!.font = UIFont(name: strNameFont , size: CGFloat (size))
        btn.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn0.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn1.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn2.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn3.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn4.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn4.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn5.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn6.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn7.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn8.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn9.setTitleColor(ColorTitle, forState: UIControlState.Normal)
        btn.backgroundColor = BackgroundTitle
        btn0.backgroundColor = BackgroundTitle
        btn1.backgroundColor = BackgroundTitle
        btn2.backgroundColor = BackgroundTitle
        btn3.backgroundColor = BackgroundTitle
        btn4.backgroundColor = BackgroundTitle
        btn5.backgroundColor = BackgroundTitle
        btn6.backgroundColor = BackgroundTitle
        btn7.backgroundColor = BackgroundTitle
        btn8.backgroundColor = BackgroundTitle
        btn9.backgroundColor = BackgroundTitle
        btnNext.backgroundColor = BackgroundTitle
    }
    
    @IBAction func mainButton(sender: UIButton) {
        
        switch sender.tag {
        case 1:
            strNumber += "1"
            lbShow.text = "$" + strNumber
        case 2:
            strNumber += "2"
            lbShow.text = "$" + strNumber
        case 3:
            strNumber += "3"
            lbShow.text = "$" + strNumber
        case 4:
            strNumber += "4"
            lbShow.text = "$" + strNumber
        case 5:
            strNumber += "5"
            lbShow.text = "$" + strNumber
        case 6:
            strNumber += "6"
            lbShow.text = "$" + strNumber
        case 7:
            strNumber += "7"
            lbShow.text = "$" + strNumber
        case 8:
            strNumber += "8"
            lbShow.text = "$" + strNumber
        case 9:
            strNumber += "9"
            lbShow.text = "$" + strNumber
        case 11:
            strNumber += "0"
            lbShow.text = "$" + strNumber
        default:
            strNumber += "."
            lbShow.text = "$" + strNumber
        }
        
    }
    
    @IBAction func nextButton(sender: UIButton) {

        if strNumber.isEmpty == true {
            var createAccountErrorAlert: UIAlertView = UIAlertView()
            createAccountErrorAlert.delegate = self
            createAccountErrorAlert.title = ""
            createAccountErrorAlert.message = "Could not number!"
            createAccountErrorAlert.addButtonWithTitle("OK")
            createAccountErrorAlert.show()
        } else {
            bill = Double (strNumber)!
            let BillAmountView = self.storyboard?.instantiateViewControllerWithIdentifier("BillAmountID") as! BillAmountController
            self.navigationController?.pushViewController(BillAmountView, animated: true)
        }
    }
    
    @IBAction func deleteButton(sender: UIButton) {
        
        if(strNumber .isEmpty != true) {
            let truncated = strNumber.substringToIndex(strNumber.endIndex.predecessor())
            strNumber = truncated
            lbShow.text = "$" + strNumber
        } else
        {
            lbShow.text = "$"
        }
    }
    
    
    @IBAction func settingButton(sender: AnyObject) {
        
        let SettingView = self.storyboard?.instantiateViewControllerWithIdentifier("Setting") as! SettingController
        self.navigationController?.pushViewController(SettingView, animated: true)
    }
    


}


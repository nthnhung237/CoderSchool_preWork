//
//  SettingController.swift
//  TipCalculator
//
//  Created by HỒNG NHUNG on 1/3/17.
//  Copyright © 2017 HỒNG NHUNG. All rights reserved.
//

import UIKit


class SettingController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var lbTipRate: UILabel!
    
    @IBOutlet var Tiprate: UISlider!
    
    @IBOutlet var setFont: UIPickerView!
    
    @IBOutlet var lbSize: UILabel!
    
    var arrNameFont : NSMutableArray = []
    
    @IBOutlet var sgColor: UISegmentedControl!
    
    @IBOutlet var btnOk: UIButton!
    
    var tip : TipCaculatorController = TipCaculatorController()
    
    @IBOutlet var setSize: UIStepper!
    
    @IBOutlet var btblack: UIButton!
    
    @IBOutlet var btblue: UIButton!
    
    @IBOutlet var btbrown: UIButton!
    
    @IBOutlet var btcyan: UIButton!
    
    @IBOutlet var btgreen: UIButton!
    
    @IBOutlet var btmagenta: UIButton!
    
    @IBOutlet var btorange: UIButton!
    
    @IBOutlet var btpurple: UIButton!
    
    @IBOutlet var btwhite: UIButton!
    
    @IBOutlet var btyellow: UIButton!
    
    @IBOutlet var btred: UIButton!
    
    @IBOutlet var btnickel: UIButton!
    
    @IBOutlet var btteal: UIButton!
    
    @IBOutlet var btmidnight: UIButton!
    
    @IBOutlet var btsky: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tip rate
        Tiprate.minimumValue = 0
        Tiprate.maximumValue = 100
        Tiprate.value = Float (tiprate)
        lbTipRate.text = "\(tiprate)" + "%"
        // set font
        self.setFont.dataSource = self
        self.setFont.delegate = self
        for str: String in UIFont.familyNames() {
            arrNameFont.addObject(str)
        }
        //set size
        setSize.wraps = true
        setSize.autorepeat = true
        setSize.maximumValue = 50
        setSize.value = size
        lbSize.text = "\(size)"
        //set button cancel && ok
        btnOk.layer.cornerRadius = 7
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sldTipRate(sender: AnyObject) {
        Tiprate.continuous = true
        Tiprate.userInteractionEnabled = true
        tiprate = Int(Tiprate.value)
        lbTipRate.text = "\(tiprate)" + "%"
        
    }
    
    //set Fort
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrNameFont.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrNameFont[row] as! String
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        arrNameFont[row] = strNameFont
        strNameFont = arrNameFont[row] as! String

    }
    
    @IBAction func stepperValueChanged(sender: UIStepper) {
        lbSize.text = Int(sender.value).description
        size = sender.value
    }
    
    
    @IBAction func setColor(sender:UISegmentedControl)
    {
        switch sgColor.selectedSegmentIndex
        {
            case 0:
                print ("0 Segment selected")
                //self .colorButton(<#T##sender: UIButton##UIButton#>)
            case 1:
                print ("1 Segment selected")

            default:
                break;
        }
    }
    
    
     @IBAction func colorButton(sender: UIButton) {
        print(sender.tag)
        if (sgColor.selectedSegmentIndex == 0)
        {
            switch sender.tag {
            case 1:
                ColorTitle = UIColor.blackColor()
            case 2:
                ColorTitle = UIColor.blueColor()
            case 3:
                ColorTitle = UIColor.brownColor()
            case 4:
                ColorTitle = UIColor.cyanColor()
            case 5:
                ColorTitle = UIColor.greenColor()
            case 6:
                ColorTitle = UIColor.magentaColor()
            case 7:
                ColorTitle = UIColor.orangeColor()
            case 8:
                ColorTitle = UIColor.purpleColor()
            case 9:
                ColorTitle = UIColor.whiteColor()
            case 11:
                ColorTitle = UIColor.yellowColor()
            case 12:
                ColorTitle = UIColor.redColor()
            case 13:
                ColorTitle = UIColor.darkGrayColor()
            case 14:
                ColorTitle = UIColor.lightGrayColor()
            default:
                ColorTitle = UIColor.clearColor()
            }
        } else {
            switch sender.tag {
            case 1:
                BackgroundTitle = UIColor.blackColor()
            case 2:
                BackgroundTitle = UIColor.blueColor()
            case 3:
                BackgroundTitle = UIColor.brownColor()
            case 4:
                BackgroundTitle = UIColor.cyanColor()
            case 5:
                BackgroundTitle = UIColor.greenColor()
            case 6:
                BackgroundTitle = UIColor.magentaColor()
            case 7:
                BackgroundTitle = UIColor.orangeColor()
            case 8:
                BackgroundTitle = UIColor.purpleColor()
            case 9:
                BackgroundTitle = UIColor.whiteColor()
            case 11:
                BackgroundTitle = UIColor.yellowColor()
            case 12:
                BackgroundTitle = UIColor.redColor()
            case 13:
                BackgroundTitle = UIColor.darkGrayColor()
            case 14:
                BackgroundTitle = UIColor.lightGrayColor()
            default:
                BackgroundTitle = UIColor.clearColor()
            }

        }
        sender.selected = !sender.selected;
        print("aaaaaaa")
    }
    
    
    @IBAction func btnOk(sender: AnyObject) {

        let TipViewControllerObj = self.storyboard?.instantiateViewControllerWithIdentifier("TipCaculator") as? TipCaculatorController
        self.navigationController?.pushViewController(TipViewControllerObj!, animated: true)
        
    }
    
}
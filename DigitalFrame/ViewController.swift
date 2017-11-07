//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 박성진 on 2017. 11. 7..
//  Copyright © 2017년 Soondori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView:UIImageView!
    @IBOutlet var btnStart:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLable:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cuteImages = [UIImage(named:"1.jpg")!,
                          UIImage(named:"2.jpg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpg")!,
                          UIImage(named:"6.jpg")!,
                          UIImage(named:"7.jpg")!,
                          UIImage(named:"8.jpg")!,
                          UIImage(named:"9.jpg")!,
                          UIImage(named:"10.jpg")!,
                          UIImage(named:"11.jpg")!,
                          UIImage(named:"12.jpg")!,
                          UIImage(named:"13.jpg")!,
                          UIImage(named:"14.jpg")!,
                          UIImage(named:"15.jpg")!]
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15.0
        //imgView.startAnimating()
    }

    @IBAction func toggleAction(_ sender:AnyObject){
        if(imgView.isAnimating){
            imgView.stopAnimating()
            btnStart.setTitle("Start", for: UIControlState.normal)
        }else{
            imgView.startAnimating()
            btnStart.setTitle("Stop", for: UIControlState.normal)
        }
    }
    
    @IBAction func changeSpeedAction(_ sender:AnyObject){
        if(imgView.isAnimating){
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            btnStart.setTitle("Stop", for: UIControlState.normal)
        }else{
            imgView.animationDuration = Double(speedSlider.value)
        }
        speedLable.text = "\(roundToPlaces(Double(speedSlider.value), 2))"
    }
    
    func roundToPlaces(_ number:Double, _ places:Double)->Double{
        let divisor = pow(10.0, places)
        return round(number * divisor) / divisor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


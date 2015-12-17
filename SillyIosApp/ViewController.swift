//
//  ViewController.swift
//  SillyIosApp
//
//  Created by Hodsdon, Trevor on 12/15/15.
//  Copyright © 2015 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var sliderRed :CGFloat = 0
    var sliderBlue :CGFloat = 0
    var sliderGreen :CGFloat = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func redSlider(sender: UISlider)
    {
        self.sliderRed = CGFloat(Double(sender.value))
        changeColor("slider")
    }
    
    @IBAction func greenSlider(sender: UISlider)
    {
        self.sliderGreen = CGFloat(Double(sender.value))
        changeColor("slider")
    }
    
    @IBAction func blueSlider(sender: UISlider)
    {
        self.sliderBlue = CGFloat(Double(sender.value))
        changeColor("slider")
    }
    
    @IBAction func blackBackgroundSelected(sender: UIButton)
    {
        changeColor("black")
    }

    @IBAction func whiteBackgroundSelected(sender: UIButton)
    {
        changeColor("white")
    }
    
    @IBAction func randomColorBackgrouSelected(sender: UIButton)
    {
        changeColor("random")
    }
    
    func changeColor(color :String)
    {
        if(color == "random")
        {
            let newRed = CGFloat(Double(arc4random_uniform(256)) / 255.000)
            let newGreen = CGFloat(Double(arc4random_uniform(256)) / 255.000)
            let newBlue = CGFloat(Double(arc4random_uniform(256)) / 55.000)
            
            view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1)
        }
        else if(color == "white")
        {
            view.backgroundColor = UIColor.whiteColor()
        }
        else if(color == "black")
        {
            view.backgroundColor = UIColor.blackColor()
        }
        else if(color == "slider")
        {
            view.backgroundColor = UIColor(red: sliderRed, green: sliderGreen, blue: sliderBlue, alpha: 1.0)
        }
    }
}


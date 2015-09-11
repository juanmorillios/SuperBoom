//
//  ViewController.swift
//  SuperBoom
//
//  Created by Juan Morillo on 11/9/15.
//  Copyright (c) 2015 JuanMorillios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var imgBlack: UIImageView!
    @IBOutlet weak var imgRed: UIImageView!
    @IBOutlet weak var imgBoomBg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressBtnBoomBlack(sender: AnyObject) {
        
        imgBlack.hidden = true
        imgBoomBg.hidden = false
        
    let alert = UIAlertView (title: "Alert!!!!", message: "A desactivado la bomba Black", delegate: nil, cancelButtonTitle: "Aceptar")
        
        alert.show()
        
        
    }

    @IBAction func pressBtnBoomRed(sender: AnyObject) {
        
        imgRed.hidden = true
        
        imgBoomBg.hidden = false
        
        let alert = UIAlertView (title: "Alert!!!!", message: "A desactivado la bomba Red", delegate: nil, cancelButtonTitle: "Aceptar")
        
        alert.show()

        
    }
}


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
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var jugador: UILabel!
    @IBOutlet weak var bombas: UILabel!
    
    var colorOfBombasArray:[String] = ["boom","boom1", "boomb2","boom3","boom4","boom5","boom6","boom7"]
    var jugadorScore = 0
    var bombasScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    
    }

   /* @IBAction func pressBtnBoomBlack(sender: AnyObject) {
        
        // Proceso para ocultar las imagenes
        
        imgBlack.hidden = true
        imgBoomBg.hidden = false
        imgRed.hidden = false
        
        //Mostramos una alerta para notifcar la desactivación de la bomba
        
    let alert = UIAlertView (title: "Alert!!!!", message: "A desactivado la bomba Black", delegate: nil, cancelButtonTitle: "Aceptar")
        
        alert.show()
        
        
    }

    @IBAction func pressBtnBoomRed(sender: AnyObject) {
       
        // Proceso para ocultar las imagenes

        imgRed.hidden = true
        imgBlack.hidden = false
        
        imgBoomBg.hidden = false
        
        //Mostramos una alerta para notifcar la desactivación de la bomba
        
        let alert = UIAlertView (title: "Alert!!!!", message: "A desactivado la bomba Red", delegate: nil, cancelButtonTitle: "Aceptar")
        
        alert.show()

        
    } */
    
    
    @IBAction func pressPlayGameBombaBtn(sender: AnyObject) {
        
      
        
        let firstRamdonBombaNumber:Int = Int(arc4random_uniform(4))
        
        let firstContenedorBombaString:String = self.colorOfBombasArray[firstRamdonBombaNumber]
        
        self.imgBlack.image = UIImage(named: firstContenedorBombaString)
        
    
        let secondRamdomBombaNumber:Int = Int(arc4random_uniform(4))
        
        let secondContenedorBombasString:String = self.colorOfBombasArray[secondRamdomBombaNumber]
        
        self.imgRed.image = UIImage(named: secondContenedorBombasString)
        
        if firstRamdonBombaNumber > secondRamdomBombaNumber{
        
        jugadorScore += 1
        self.jugador.text = String(jugadorScore)
            
        
        } else if firstRamdonBombaNumber == secondRamdomBombaNumber {
        
        
            
        
        } else {
        
        
            bombasScore += 1
            self.bombas.text = String(bombasScore)
        
        }
        
        
        
    }
   
    
}


//
//  vistaFinal.swift
//  pizza
//
//  Created by Katherine Gonzalez on 31/3/16.
//  Copyright (c) 2016 Katherine Gonzalez. All rights reserved.
//

import Foundation
import UIKit


class vistaFinal: UIViewController {
    var nuevaPizza = pizza()
    
    @IBOutlet weak var tamano: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var pan: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tamano.text = nuevaPizza.tamano
        self.pan.text = nuevaPizza.masa
        self.queso.text = nuevaPizza.queso
        self.ingredientes.text = nuevaPizza.ingredientes.description
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if( nuevaPizza.tamano == "" || nuevaPizza.queso == "" || nuevaPizza.masa == "" || nuevaPizza.ingredientes.isEmpty )
        {
            let alertController = UIAlertController(title: "Estado de su orden", message:
                "A Su orden le faltan Elementos, Revise su orden", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        else {
            self.nuevaPizza = pizza()
        }
      
     
    }
}
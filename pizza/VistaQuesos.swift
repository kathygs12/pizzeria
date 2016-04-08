//
//  VistaQuesos.swift
//  pizza
//
//  Created by Katherine Gonzalez on 10/3/16.
//  Copyright (c) 2016 Katherine Gonzalez. All rights reserved.
//
import UIKit


class vistaQuesos: UIViewController {
    var nuevaPizza = pizza()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as vistaIngrdientes

        if(segue.identifier == "1"){
            nuevaPizza.queso = "Mozarella"
        }else if(segue.identifier == "2"){
            nuevaPizza.queso = "Cheddar"
        }else if(segue.identifier == "3"){
            nuevaPizza.queso = "Parmesano"
        }else if(segue.identifier == "4"){
            nuevaPizza.queso = "Sin Queso"
        }
      nextView.nuevaPizza = self.nuevaPizza  
    }
}

    

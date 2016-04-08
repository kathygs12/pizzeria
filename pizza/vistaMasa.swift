//
//  vistaMasa.swift
//  pizza
//
//  Created by Katherine Gonzalez on 28/3/16.
//  Copyright (c) 2016 Katherine Gonzalez. All rights reserved.
//

import UIKit


class vistaMasa: UIViewController {

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
        let nextView: vistaQuesos = segue.destinationViewController as vistaQuesos

        if(segue.identifier == "delgada"){
            nuevaPizza.masa = "delgada"
        }else if(segue.identifier == "crugiente"){
            nuevaPizza.masa = "crugiente"
        }else if(segue.identifier == "gruesa"){
            nuevaPizza.masa = "gruesa"
        }
        nextView.nuevaPizza = self.nuevaPizza
    }
    
}
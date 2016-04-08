//
//  tamaño.swift
//  pizza
//
//  Created by Katherine Gonzalez on 10/3/16.
//  Copyright (c) 2016 Katherine Gonzalez. All rights reserved.
//


import UIKit



class vistaTamaño: UIViewController {


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //let nextView = segue.destinationViewController as vistaMasa
    let nextView = segue.destinationViewController as vistaMasa
    var nuevaPizza = pizza()
        if(segue.identifier == "chica"){
      

         nuevaPizza.tamano = "chica"
        }else if(segue.identifier == "mediana"){
         nuevaPizza.tamano = "mediana"
        }else if(segue.identifier == "grande"){
         nuevaPizza.tamano = "grande"
        }
     nextView.nuevaPizza = nuevaPizza
    }
    
}
//
//  vistaIngredientes.swift
//  pizza
//
//  Created by Katherine Gonzalez on 10/3/16.
//  Copyright (c) 2016 Katherine Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class vistaIngrdientes: UIViewController {
    var nuevaPizza = pizza()

    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceitunas: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pina: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as vistaFinal
        
        if (self.jamon.on){
            nuevaPizza.ingredientes.append("Jamon")}
        if(self.peperoni.on){
            nuevaPizza.ingredientes.append("Peperoni")}
        if (self.pavo.on){
            nuevaPizza.ingredientes.append("Pavo")}
        if(self.salchicha.on){
            nuevaPizza.ingredientes.append("Salchicha")}
        if (self.aceitunas.on){
            nuevaPizza.ingredientes.append("Aceitunas")}
        if(self.cebolla.on){
            nuevaPizza.ingredientes.append("Cebolla")}
        if (self.pimiento.on){
            nuevaPizza.ingredientes.append("Pimiento")}
        if(self.pina.on){
            nuevaPizza.ingredientes.append("Piña")}
        if(self.anchoa.on){
            nuevaPizza.ingredientes.append("Anchoa")}
    
        nextView.nuevaPizza = self.nuevaPizza
    }
    
}
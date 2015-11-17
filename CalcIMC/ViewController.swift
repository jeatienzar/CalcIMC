//
//  ViewController.swift
//  CalcIMC
//
//  Created by José Enrique Atiénzar Ibáñez on 16/11/15.
//  Copyright © 2015 José Enrique Atiénzar Ibáñez. All rights reserved.
//

import UIKit


// 1  hemos agregado que herede de UITextFieldDelegate
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //2 definimos las asignaciones a los delegados
        peso.delegate=self
        estatura.delegate=self
    
    }
    
    @IBAction func backgroundTap(sender:UIControl)
    {
        peso.resignFirstResponder()
        estatura.resignFirstResponder()
        
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField)
    {
        sender.resignFirstResponder() // 3 desaparecer el teclado

    }
    
    
    @IBAction func calcular(sender: AnyObject) {
        var IMC: Double
        let pesoAux: Double?
        pesoAux = Double(self.peso.text!)!
        
        let estaturaAux: Double = Double(self.estatura.text!)!
        
        IMC = pesoAux!/(estaturaAux*estaturaAux)
        
        print("Resultado: \(IMC)")
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


}


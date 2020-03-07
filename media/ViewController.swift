//
//  ViewController.swift
//  media
//
//  Created by Professor SENAI on 3/7/20.
//  Copyright © 2020 fneves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var n1: UITextField!
    @IBOutlet weak var n2: UITextField!
    @IBOutlet weak var n3: UITextField!
    @IBOutlet weak var n4: UITextField!
    @IBOutlet weak var mediaFin: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    var nota01: Double = 0;
    var nota02: Double = 0;
    var nota03: Double = 0;
    var nota04: Double = 0;
    var media: Double = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionN1(_ sender: Any) {
        let nt1: String = n1.text!;
        nota01 = Double(nt1) ?? 0;
    }
    
    @IBAction func actionN2(_ sender: Any) {
        let nt2: String = n2.text!;
        nota02 = Double(nt2) ?? 0;
        print(nt2);
        print(nota02);
    }
    
    @IBAction func actionN3(_ sender: Any) {
        let nt3: String = n3.text!;
        nota03 = Double(nt3) ?? 0;
    }
    
    @IBAction func actionN4(_ sender: Any) {
        let nt4: String = n4.text!;
        nota04 = Double(nt4) ?? 0;
    }
    
    @IBAction func actionCalculaMedia(_ sender: Any) {
        print(nota01);
        print(nota02);
        print(nota03);
        print(nota04);
        print(media);
        media = (nota01+nota02+nota03+nota04)/4;
        mediaFin.text = String (media);
        
        if(media >= 6.0) {
            lblResultado.text = "Aluno Aprovado!";
        }else {
            lblResultado.text = "Aluno Reprovado!";
        }
    }
    
    
    @IBAction func actionLimpar(_ sender: Any) {
        n1.text = "";
        n2.text = "";
        n3.text = "";
        n4.text = "";
        mediaFin.text = "";
        nota01 = 0.0;
        nota02 = 0.0;
        nota03 = 0.0;
        nota04 = 0.0;
        media = 0.0;
   }
    
}


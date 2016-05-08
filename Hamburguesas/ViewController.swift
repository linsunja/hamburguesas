//
//  ViewController.swift
//  Hamburguesas
//
//  Created by JOSE EFRAIN BALLADO LUNA on 08/05/16.
//  Copyright © 2016 LinSunJa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelPais: UILabel!
    @IBOutlet weak var labelHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let color = Colores()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func quieroHamburguesa() {
        labelPais.text = paises.obtenPais()
        labelHamburguesa.text = hamburguesas.obtenHamburguesa()
        let colorAleatorio = color.regresaAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
}


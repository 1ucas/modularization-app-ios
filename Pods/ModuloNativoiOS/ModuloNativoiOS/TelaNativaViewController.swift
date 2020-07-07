//
//  TelaNativaViewController.swift
//  ModuloNativoiOS
//
//  Created by Lucas on 03/07/20.
//  Copyright © 2020 Lucas. All rights reserved.
//

import UIKit
import ActionsiOS

public class TelaNativaViewController: CallbackViewController {

    @IBOutlet weak var lblCliques: UILabel!
    var valor = 0
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.lblCliques.text = "\(valor)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clicouNoBotao(_ sender: UIButton) {
        callback?("Nativo: \(valor)");
        SharedRouter.sair()
    }
    
    @IBAction func alterouValor(_ sender: UIStepper) {
        valor = Int(sender.value)
        lblCliques.text = "\(sender.value)"
    }
}

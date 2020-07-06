//
//  ViewController.swift
//  ModularizacaoCross
//
//  Created by Lucas on 03/07/20.
//  Copyright © 2020 Lucas. All rights reserved.
//

import UIKit
import Flutter
import ActionsiOS

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOrigem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func abrirFlutter(_ sender: UIButton) {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
            FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
    
    @IBAction func abrirNativo(_ sender: UIButton) {
        if let nav = navigationController {
            SharedRouter.navegarParaModuloNativo(navigationController: nav) { resposta in
                self.labelOrigem.text = resposta
            }
        }
    }
    
}


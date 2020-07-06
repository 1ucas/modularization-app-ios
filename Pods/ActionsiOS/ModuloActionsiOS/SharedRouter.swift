//
//  SharedRouter.swift
//  ModuloActionsiOS
//
//  Created by Lucas on 03/07/20.
//  Copyright © 2020 Lucas. All rights reserved.
//
import UIKit

public protocol Storyboarded {
    func instantiate(storyboardName: String, bundle: Bundle?) -> UIViewController
}

extension String: Storyboarded {
    public func instantiate(storyboardName: String, bundle: Bundle?) -> UIViewController {
        let id = self
        let storyboard = UIStoryboard(name: storyboardName, bundle: bundle)
        // swiftlint:disable force_cast
        return storyboard.instantiateViewController(withIdentifier: id)
        // swiftlint:enable force_cast
    }
}

open class SharedRouter {
    
    private static var navigationController: UINavigationController?
    
    public static func navegarParaModuloNativo(navigationController: UINavigationController, callback: @escaping (String) -> Void) {
        let nativoViewController = "TelaNativaViewController".instantiate(storyboardName: "StoryboardNativo", bundle: Bundle(identifier: "com.manobray.ModuloNativoiOS")) as? CallbackViewController
        if let vc = nativoViewController {
            vc.callback = callback;
            self.navigationController = navigationController
            navigationController.pushViewController(vc, animated: true);
        }
    }
    
    public static func sair() {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

open class CallbackViewController : UIViewController {
    open var callback: ((String) -> Void)? = nil;
}

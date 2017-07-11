//
//  UIViewController+Storyboard.swift
//  UIViewControllerExtension
//
//  Created by Anton Kuznetsov on 24.06.17.
//  Copyright © 2017 Anton Kuznetsov. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {
    
    class func initFromStoryboard() -> UIViewController? {
        let fileURLs :[URL] = Bundle.main.urls(forResourcesWithExtension: "storyboardc", subdirectory: nil)!
        
        for storyboardURL in fileURLs {
            let actualStoryboard = UIStoryboard(name: (storyboardURL.lastPathComponent as NSString).deletingPathExtension, bundle: nil)
            var controller: UIViewController?
            
            do {
                try TLExceptionHandler.catchException {
                    controller = actualStoryboard.instantiateViewController(withIdentifier: String(describing: self))
                }
            }
            catch {
                print("An error ocurred: \(error)")
                continue
            }
            
            print("Found controller: \(controller)")
            
            return controller
            
        }
        
        return nil
    }
}

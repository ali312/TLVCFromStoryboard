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
        var documentsDirectory: NSURL?
        
        print(String(describing: self))
        
        documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last! as NSURL?
        
        do {
            let directoryContents = try FileManager.default.contentsOfDirectory(at: documentsDirectory as! URL, includingPropertiesForKeys: nil, options: [])
            print(directoryContents)
            
            let storyboards = directoryContents.filter{ $0.pathExtension == "storyboard" }
            
            for storyboard in storyboards {
                let actualStoryboard = UIStoryboard(name: (storyboard.lastPathComponent as NSString).deletingPathExtension, bundle: nil)
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
        } catch let error as NSError {
            print("Couldn't find viewController: \(error)")
        }
        
        return nil
    }
}

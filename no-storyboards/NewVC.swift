//
//  NewVC.swift
//  no-storyboards
//
//  Created by Peter Zaporowski on 15.02.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit

class NewVC: UIViewController {
    
    var blueVC: BlueVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?){
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented") ==> Default way of coder
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loadBlueView(sender: AnyObject) {
        //blueVC = BlueVC(nibName: "BlueVC", bundle: nil)
        blueVC = BlueVC(printMe: "Printed some text here!") // using convenience method
        self.presentViewController(blueVC, animated: true, completion: nil)
    }
}


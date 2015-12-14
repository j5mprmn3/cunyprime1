//
//  WebView.swift
//  cunyPrime
//
//  Created by Michael Rueda on 11/12/15.
//  Copyright © 2015 Michael Rueda. All rights reserved.
//

import UIKit

class WebView: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        //let url = NSURL(string: "https://safe-dusk-8588.herokuapp.com/#")
        let url = NSURL(string: "www.google.com")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}




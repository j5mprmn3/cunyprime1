//
//  sWebView.swift
//  cunyprime1
//
//  Created by Michael Rueda on 12/14/15.
//  Copyright © 2015 Michael Rueda. All rights reserved.
//

import UIKit

class sWebView: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var sWebView: UIWebView!
    @IBOutlet weak var sActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sWebView.delegate = self
        
        let url = NSURL(string: "https://cunyprime.herokuapp.com/index.html?which=schedule")
        let request = NSURLRequest(URL: url!)
        sWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView)
    {
        sActivityIndicator.startAnimating()
    }
    func webViewDidFinishLoad(webView: UIWebView)
    {
        sActivityIndicator.stopAnimating()
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
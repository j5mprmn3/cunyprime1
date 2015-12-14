//
//  pWebView.swift
//  cunyprime1
//
//  Created by Michael Rueda on 12/14/15.
//  Copyright © 2015 Michael Rueda. All rights reserved.
//

import UIKit

class pWebView: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var pWebView: UIWebView!
    @IBOutlet weak var pActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pWebView.delegate = self
        
        let url = NSURL(string: "https://safe-dusk-8588.herokuapp.com/#")
        let request = NSURLRequest(URL: url!)
        pWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView)
    {
        pActivityIndicator.startAnimating()
    }
    func webViewDidFinishLoad(webView: UIWebView)
    {
        pActivityIndicator.stopAnimating()
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
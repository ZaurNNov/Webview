//
//  ViewController.swift
//  Webview
//
//  Created by A1 on 14.03.2018.
//  Copyright © 2018 A1. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myRequest()
        localHTMLRequest()
    }
    
    func myRequest() {
        let url = URL(string: "https://www.yandex.ru")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    func localHTMLRequest() {
        let htmlPath = Bundle.main.path(forResource: "sample", ofType: "html")
        let url = URL(fileURLWithPath: htmlPath!)
        let request = URLRequest(url: url)
        webView.load(request)
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }

}




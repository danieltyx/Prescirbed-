//
//  chatBotViewController.swift
//  Prescribed
//
//  Created by Yanying Huo on 10/31/21.
//

import UIKit
import WebKit
class chatBotViewController: UIViewController, WKNavigationDelegate, WKUIDelegate,
                             UISearchBarDelegate
{
    var webView: WKWebView!
    let screenSize = UIScreen.main.bounds
    
    override func loadView()
    {
        let webConfiguration = WKWebViewConfiguration()
        self.webView = WKWebView(frame: .zero, configuration: webConfiguration)
        self.webView.allowsBackForwardNavigationGestures = true
        self.view = self.webView
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let url = URL(string: "https://cac2021-bot-1.yuxuantian.repl.co/")
        let request = URLRequest(url: url!)
        self.webView.load(request)
    }

}

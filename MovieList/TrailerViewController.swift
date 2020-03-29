//
// TrailerViewController.swift
// MovieList
//
// Created for MovieList on 29/03/20.
//

import UIKit
import WebKit

class TrailerViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let urlUnwrapped = url else {
            print("The URL was nil.")
            return
        }
        
        let urlRequest: URLRequest = URLRequest(url: urlUnwrapped)
        webView.load(urlRequest)
    }
}

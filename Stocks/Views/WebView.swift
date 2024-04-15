//
//  WebView.swift
//  Stocks
//
//  Created by Rehan Khan on 1/28/22.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
   
    let url: URL
    
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateNSView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "http://www.google.com")!)
    }
}

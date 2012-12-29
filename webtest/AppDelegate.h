//
//  AppDelegate.h
//  webtest
//
//  Created by Sebastian Ruiz on 24/08/2012.
//  Copyright (c) 2012 Sebastian Ruiz. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Webkit/Webkit.h>
@interface AppDelegate : NSObject <NSApplicationDelegate> {
    WebView *webView;
}
@property (assign) IBOutlet NSWindow *window;
@property (strong) IBOutlet WebView *webView;

@end

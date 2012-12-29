//
//  AppDelegate.m
//  JsToObjc
//
//  Created by Sebastian Ruiz on 24/08/2012.
//  Copyright (c) 2012 Sebastian Ruiz. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize webView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [webView setFrameLoadDelegate:self];
    NSString *urlString = @"http://sruiz.co.uk/sruiz/wp/objcMessage.html";
    [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
}
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
    return YES;
}

//this is called as soon as the script environment is ready in the webview
- (void)webView:(WebView *)sender didClearWindowObject:(WebScriptObject *)windowScriptObject forFrame:(WebFrame *)frame
{
    //add the controller to the script environment
    //the "Cocoa" object will now be available to JavaScript
    [windowScriptObject setValue:self forKey:@"Cocoa"];
}

//this returns a nice name for the method in the JavaScript environment
+(NSString*)webScriptNameForSelector:(SEL)sel
{
    if(sel == @selector(logJavaScriptString:)){
        return @"log";
	}
    return nil;
}

//this allows JavaScript to call the -logJavaScriptString: method
+ (BOOL)isSelectorExcludedFromWebScript:(SEL)sel
{
    if(sel == @selector(logJavaScriptString:))
        return NO;
    return YES;
}
//this is a simple log command
- (void)logJavaScriptString:(NSString*) logText
{
    NSLog(@"JavaScript: %@",logText);
	//start playing around with logText here!!
}

@end

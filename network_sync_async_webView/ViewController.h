//
//  ViewController.h
//  network_sync_async_webView
//
//  Created by Esraa Mohamed on 3/22/19.
//  Copyright © 2019 Esraa Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<NSURLConnectionDelegate , NSURLConnectionDataDelegate>
@property  NSMutableData *totalData;
- (IBAction)Sync:(id)sender;
- (IBAction)Async:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@property (weak, nonatomic) IBOutlet UITextView *textfield;

@end


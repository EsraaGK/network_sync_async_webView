//
//  ViewController.m
//  network_sync_async_webView
//
//  Created by Esraa Mohamed on 3/22/19.
//  Copyright © 2019 Esraa Mohamed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _totalData= [NSMutableData new];
}


- (IBAction)Sync:(id)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"https://news.yahoo.com/"];
    NSString *myData = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    _textfield.text=myData;
}

- (IBAction)Async:(id)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"https://news.yahoo.com/"];
    NSURLRequest *request =[[NSURLRequest alloc] initWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];

   //
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data{
   
    [ _totalData appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(nonnull NSError *)error{
    printf("fail");
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSString *X =[[NSString alloc] initWithData:_totalData encoding:nil];
    _textfield.text=X;
    [_webview loadHTMLString:X baseURL:nil];
    
}

@end

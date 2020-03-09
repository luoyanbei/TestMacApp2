//
//  ViewController.m
//  TestMacApp2
//
//  Created by wangjun1 on 2020/3/6.
//  Copyright © 2020 wangjun1. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak) IBOutlet NSTextField *keyTxt;

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)clickHelloBtn:(id)sender {
    
    NSString * txt = @"error";
    if([self.keyTxt.stringValue isEqualToString:@"123456"])
    {
        txt = @"Hello,master!";
    }
    
    [self openAlertPanelWithTxt:txt];
    
    NSLog(@"Hello");
}

- (void)openAlertPanelWithTxt:(NSString *)txt{
    
    NSAlert *alert = [[NSAlert alloc] init];
    alert.icon = [NSImage imageNamed:@"swift"];
    
    //增加一个按钮
    [alert addButtonWithTitle:@"OK"];//1000
    
    //增加一个按钮
    [alert addButtonWithTitle:@"NO"];//1001
    
    //提示的标题
    [alert setMessageText:@"提示"];
    //提示的详细内容
    [alert setInformativeText:txt];
    //设置告警风格
    [alert setAlertStyle:NSInformationalAlertStyle];
    
    //开始显示告警
    [alert beginSheetModalForWindow:[self.view window]
                  completionHandler:^(NSModalResponse returnCode){
                      //用户点击告警上面的按钮后的回调
                      NSLog(@"returnCode : %d",returnCode);
                  }
     ];
}


@end

//
//  ViewController.m
//  JSPatchTest
//
//  Created by kimiLin on 2016/12/21.
//  Copyright © 2016年 kimiLin. All rights reserved.
//

#import "ViewController.h"
#import <JPEngine.h>
@interface ViewController ()
@property (nonatomic, weak) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UILabel *label = [UILabel new];
    label.text = @"View Did load";
    [label sizeToFit];
    label.center = self.view.center;
    [self.view addSubview:label];
    self.label = label;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.label.text = [self text];
}

- (IBAction)loadScript:(id)sender {
    [JPEngine startEngine];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"patch" ofType:@".js"];
    NSString *script = [[NSString alloc]initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];
}

- (NSString *)text {
    return @"OC Text";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

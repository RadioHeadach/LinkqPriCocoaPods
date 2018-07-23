//
//  MDViewController.m
//  LinkqPriCocoaPod
//
//  Created by rooster2578@gmail.com on 07/17/2018.
//  Copyright (c) 2018 rooster2578@gmail.com. All rights reserved.
//

#import "MDViewController.h"
#import <LinkqPriCocoaPod/MDNetwork.h>

@interface MDViewController ()
{
    MDNetwork *_work;
}
@end

@implementation MDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _work = [MDNetwork new];
    
    //NSLog test
    [_work logOneWord];
    
    //Network Test
    [_work getURLWith:@"https://beta.apple.com/sp/zh/betaprogram/welcome?locale=zh"];
    
    //UI Test
    UIView *view = [_work returnOneBlueView];
    view.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height *2/3);
    [self.view addSubview:view];
    
    //Button Test
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 50, 300, 100)];
    imageView.image = [_work addOneImage];
    [self.view addSubview:imageView];

    UIButton *btnView = [_work addOneButton];
    btnView.frame = CGRectMake(50, self.view.frame.size.height/2, 150, 50);
    
    [self.view addSubview:btnView];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

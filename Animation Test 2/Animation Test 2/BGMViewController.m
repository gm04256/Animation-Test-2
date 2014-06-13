//
//  BGMViewController.m
//  Animation Test 2
//
//  Created by 馬 岩 on 14-6-13.
//  Copyright (c) 2014年 馬 岩. All rights reserved.
//

#import "BGMViewController.h"

@interface BGMViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UIView *myView;

@end

@implementation BGMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myButtonClicked:(UIButton *)sender
{
	CABasicAnimation* theAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
	theAnimation.duration=0.5;
	theAnimation.repeatCount=2;
	theAnimation.autoreverses=YES;
	theAnimation.fromValue=[NSNumber numberWithFloat:1.0];
	theAnimation.toValue=[NSNumber numberWithFloat:0.0];
	[self.myView.layer addAnimation:theAnimation forKey:@"animateOpacity"];
}
@end

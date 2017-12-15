//
//  ViewController.m
//  SBT-2-9
//
//  Created by Denis on 15.12.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "ViewController.h"
#import "CounterModel.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel  *counterLabel;
@property (nonatomic, strong) UIButton *decrementButton;
@property (nonatomic, strong) UIButton *incrementButton;
@property (nonatomic, strong) CounterModel *model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    // Do any additional setup after loading the view, typically from a nib.

    self.counterLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 100, 25)];
    self.counterLabel.textColor = UIColor.blackColor;
    self.counterLabel.textAlignment = NSTextAlignmentCenter;
    self.counterLabel.backgroundColor = UIColor.lightGrayColor;
    [self.view addSubview:self.counterLabel];

    self.decrementButton = [[UIButton alloc] initWithFrame:CGRectMake(25, 100, 100, 25)];
    [self.decrementButton setTitle:@"increment" forState:UIControlStateNormal];
    [self.decrementButton.backgroundColor = [UIColor.lightGrayColor];
    [self.view addSubview:self.incrementButton];
    [self.decrementButton addTarget:self action:@selector(decrementTapped) forControlEvents:UIControlEventTouchUpInside];

    self.incrementButton = [[UIButton alloc] initWithFrame:CGRectMake(25, 100, 100, 25)];
    [self.incrementButton setTitle:@"increment" forState:UIControlStateNormal];
    [self.incrementButton.backgroundColor = UIColor.lightGrayColor];
    [self.view addSubview:self.incrementButton];
    [self.decrementButton addTarget:self action:@selector(incrementTapped) forControlEvents:UIControlEventTouchUpInside];

self.model = [CounterModel new];
    [self updateView];
}


- (void) decrementTapped
{
    
}

- (void) incrementTapped
{
    
}

- (void) updateView
{
    self.counterLabel.text = self.model.counter.stringValue;
    if (self.counter.integerValue == 0){
        
        self.decrementButton.enabled = NO;
        
    }
    else{
        self.decrementButton.enabled = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


/*
 MVC
 MVP
 MVVM
 Viper
 */

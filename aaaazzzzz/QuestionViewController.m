//
//  QuestionViewController.m
//  aaaazzzzz
//
//  Created by 柴田 梓 on 2014/06/29.
//  Copyright (c) 2014年 柴田 梓. All rights reserved.
//

#import "QuestionViewController.h"
#import <Parse/Parse.h>

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)question:(id)sender{
    NSLog(@"書き込みします");
    //書き込みしてます。
    PFObject *Q = [PFObject objectWithClassName:@"Q"];
    Q[@"image"] = @"az.jpg";
    Q[@"name"] = username1.text;
    Q[@"text"] = naiyou.text;

    [Q saveInBackground];
    

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

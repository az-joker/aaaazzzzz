//
//  answerViewController.m
//  aaaazzzzz
//
//  Created by 柴田 梓 on 2014/07/13.
//  Copyright (c) 2014年 柴田 梓. All rights reserved.
//

#import "answerViewController.h"
#import <Parse/Parse.h>

@interface answerViewController ()

@end

@implementation answerViewController

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
-(IBAction)answer:(id)sender{
        NSLog(@"書き込みします");
        //書き込みしてます。
        PFObject *A = [PFObject objectWithClassName:@"A"];
        A[@"image"] = @"az.jpg";
        A[@"name"] = kakiko.text;
        A[@"text"] = kakio.text;
        
        [A saveInBackground];
        
        
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

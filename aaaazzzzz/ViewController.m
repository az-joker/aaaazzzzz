//
//  ViewController.m
//  aaaazzzzz
//
//  Created by 柴田 梓 on 2014/05/18.
//  Copyright (c) 2014年 柴田 梓. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
      [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)save{
    //書き込みしてます。
    PFObject *User = [PFObject objectWithClassName:@"User"];
    User[@"username"] = name1.text;
    User[@"password"] = name2.text;
    
    [User saveInBackground];

    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)loadParse:(id)sender{
    //読み込み
    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    //[query whereKey:@"password" equalTo:@"test"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            // Do something with the found objects
            for (PFObject *object in objects) {
                NSLog(@"%@ username=%@", object.objectId,object[@"username"]);
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}
@end


//
//  ViewController.h
//  aaaazzzzz
//
//  Created by 柴田 梓 on 2014/05/18.
//  Copyright (c) 2014年 柴田 梓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITextFieldDelegate, UIGestureRecognizerDelegate>
{
    IBOutlet UITextField *name1;
    IBOutlet UITextField *name2;
}
-(IBAction)save;

@end

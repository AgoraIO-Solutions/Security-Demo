//
//  LoginViewController.h
//  Agora-iOS-Tutorial-Objective-C
//
//  Created by XN on 2020/8/7.
//  Copyright © 2020 Agora.io. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *channel;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *mode;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (nonatomic, strong) NSString *selected;
@property (nonatomic, strong) NSArray *modes;

- (IBAction)modeAction:(id)sender;
- (IBAction)selectAction:(id)sender;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
@end

NS_ASSUME_NONNULL_END

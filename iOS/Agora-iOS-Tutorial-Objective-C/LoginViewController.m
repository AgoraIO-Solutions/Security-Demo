//
//  LoginViewController.m
//  Agora-iOS-Tutorial-Objective-C
//
//  Created by XN on 2020/8/7.
//  Copyright © 2020 Agora.io. All rights reserved.
//

#import "LoginViewController.h"
#import "VideoChatViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _picker.delegate = self;
    _picker.dataSource = self;
    _picker.showsSelectionIndicator = YES;
    _mode.inputView = _picker;
    _modes = [NSArray arrayWithObjects:@"aes-128-xts", @"aes-256-xts", nil];
}

- (IBAction)modeAction:(id)sender{
    _toolbar.hidden = NO;
    _picker.hidden = NO;
}

- (IBAction)selectAction:(id)sender{
    [_mode resignFirstResponder];
    _toolbar.hidden = YES;
    _picker.hidden = YES;
    _mode.text = _selected;
}

- (BOOL)shouldAutorotate {
    return NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [_modes count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_modes objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:
(NSInteger)row inComponent:(NSInteger)component
{
    _selected = [_modes objectAtIndex:row];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (![_channel isExclusiveTouch]) {
        [_channel resignFirstResponder];
    }
    if (![_password isExclusiveTouch]) {
        [_password resignFirstResponder];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    VideoChatViewController *vc = segue.destinationViewController;
    vc.channel = _channel.text;
    vc.encryptionPassword = _password.text;
    vc.encryptionMode = _mode.text;
}
@end

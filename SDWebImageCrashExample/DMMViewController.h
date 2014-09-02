//
//  DMMViewController.h
//  SDWebImageCrashExample
//
//  Created by Daniel on 9/2/14.
//  Copyright (c) 2014 Daniel Miedema. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DMMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *topImageView;
@property (weak, nonatomic) IBOutlet UIImageView *middleImageView;
@property (weak, nonatomic) IBOutlet UIImageView *bottomImageView;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *imageViews;

@property (weak, nonatomic) IBOutlet UIButton *startButton;
@end

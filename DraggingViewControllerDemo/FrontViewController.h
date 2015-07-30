//
//  FrontViewController.h
//  JCWindowShade
//
//  Created by binaryboy on 7/30/15.
//
//

#import <UIKit/UIKit.h>

@interface FrontViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *headerOfFrontView;
@property (nonatomic, strong) UIPanGestureRecognizer *drag;

@end

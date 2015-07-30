//
//  FrontViewController.m
//  JCWindowShade
//
//  Created by binaryboy on 7/30/15.
//
//

#import "FrontViewController.h"

@interface FrontViewController ()

@end

@implementation FrontViewController
@synthesize headerOfFrontView;
@synthesize drag;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Add our gesture recognizers
    self.drag = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleDrag:)];
    [self.headerOfFrontView addGestureRecognizer:self.drag];
    [self.drag setCancelsTouchesInView:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (void)handleDrag:(UIPanGestureRecognizer *)gestureRecognizer
//{
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"DragNotification" object:nil userInfo:nil];
//
//}
- (void)handleDrag:(UIPanGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer.state == UIGestureRecognizerStateEnded) {
        // Reset isDragging
//        self.dragging = NO;
        
        // If it is over, we check the velocity of the drag
        // to see if we want to finish dragging it up or down
        CGPoint origin = [gestureRecognizer velocityInView:self.view];
        CGFloat velocity = origin.y;
        CGFloat vertical;
        NSTimeInterval duration;
        
        // If the y value is negative, we are moving up and so attach the view
        if (velocity < 0) {
            // Calculate how many points we have to go before we hit our destination
            [[NSNotificationCenter defaultCenter] postNotificationName:@"MoveToTopNotification" object:nil userInfo:nil];

        }
        else {
            // Otherwise, at a standstill or moving back, we want to retract the view
            [[NSNotificationCenter defaultCenter] postNotificationName:@"MoveToBottomNotification" object:nil userInfo:nil];

        }
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

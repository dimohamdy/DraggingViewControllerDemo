//
//  BackViewViewController.m
//  JCWindowShade
//
//  Created by binaryboy on 7/30/15.
//
//

#import "BackViewViewController.h"

@interface BackViewViewController ()

@end

@implementation BackViewViewController
@synthesize frontView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(MoveToTop) name:@"MoveToTopNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(MoveToBottom) name:@"MoveToBottomNotification" object:nil];


}
-(void)MoveToTop{
    
    
    [UIView animateWithDuration:0.3f
                          delay:0.0f
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         [frontView setFrame:CGRectMake(0.0f, 0.0f, frontView.frame.size.width, frontView.frame.size.height)];
                     }
                     completion:nil];
}
-(void)MoveToBottom{

    [UIView animateWithDuration:0.3f
                          delay:0.0f
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         
                         CGRect screenRect = [[UIScreen mainScreen] bounds];
                         [frontView setFrame:CGRectMake(0.0f, screenRect.size.height-90, frontView.frame.size.width, frontView.frame.size.height)];
                     }
                     completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

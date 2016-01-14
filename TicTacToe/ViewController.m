//
//  ViewController.m
//  TicTacToe
//
//  Created by south boske on 1/14/16.
//  Copyright © 2016 south boske. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *spaceOne;
@property (weak, nonatomic) IBOutlet UIButton *spaceTwo;
@property (weak, nonatomic) IBOutlet UIButton *spaceThree;
@property (weak, nonatomic) IBOutlet UIButton *spaceFour;
@property (weak, nonatomic) IBOutlet UIButton *spaceSix;
@property (weak, nonatomic) IBOutlet UIButton *spaceSeven;
@property (weak, nonatomic) IBOutlet UIButton *spaceEigth;
@property (weak, nonatomic) IBOutlet UIButton *spaceNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property NSString *xString;
@property NSString *oString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.xString = [NSString stringWithFormat:@"X"];
    self.oString = [NSString stringWithFormat:@"O"];
}

- (IBAction)onButtonTapped:(UIButton *)sender {
    if ([self.whichPlayerLabel.text isEqualToString:@"X"]) {
        self.whichPlayerLabel.text = [NSString stringWithFormat:self.oString];
    } else {
        self.whichPlayerLabel.text = [NSString stringWithFormat:self.xString];
    }
}




@end

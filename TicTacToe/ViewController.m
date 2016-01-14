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
    self.whichPlayerLabel.text = self.xString;
    self.whichPlayerLabel.textColor = [UIColor redColor];
    
    
}

- (IBAction)onButtonTapped:(UIButton *)sender {
    [sender setTitle:self.whichPlayerLabel.text forState:UIControlStateNormal];
    [sender setTitleColor:self.whichPlayerLabel.textColor forState:normal];
    [sender setEnabled:NO];
    
    if ([self.whichPlayerLabel.text isEqualToString:@"X"]) {
        self.whichPlayerLabel.text = [NSString stringWithFormat:self.oString];
        self.whichPlayerLabel.textColor = [UIColor blueColor];
    } else {
        self.whichPlayerLabel.text = [NSString stringWithFormat:self.xString];
        self.whichPlayerLabel.textColor = [UIColor redColor];
    }
    
    for (<#initialization#>; <#condition#>; <#increment#>) {
        <#statements#>
    }
    
    if (spaceOne & space2 &space3 == X) {
        return @"You Win";
        
    }
    
}


@end

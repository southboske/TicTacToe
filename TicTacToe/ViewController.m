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
@property (weak, nonatomic) IBOutlet UIButton *spaceFive;
@property NSInteger s1;
@property NSInteger s2;
@property NSInteger s3;
@property NSInteger s4;
@property NSInteger s5;
@property NSInteger s6;
@property NSInteger s7;
@property NSInteger s8;
@property NSInteger s9;
@property NSString *winner;
@property UIAlertController *winnerAlert;
@property UIAlertAction *cancel;

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
    
    if ([self.spaceOne.titleLabel.text isEqualToString:@"X"])
    {
        self.s1 = 1;
    }
    if ([self.spaceOne.titleLabel.text isEqualToString:@"O"])
    {
        self.s1 = 2;
    }
    
    if ([self.spaceTwo.titleLabel.text isEqualToString:@"X"])
    {
        self.s2 = 1;
    }
    if ([self.spaceTwo.titleLabel.text isEqualToString:@"O"])
    {
        self.s2 = 2;
    }

    if ([self.spaceThree.titleLabel.text isEqualToString:@"X"])
    {
        self.s3 = 1;
    }
    if ([self.spaceThree.titleLabel.text isEqualToString:@"O"])
    {
        self.s3 = 2;
    }

    if ([self.spaceFour.titleLabel.text isEqualToString:@"X"])
    {
        self.s4 = 1;
    }
    if ([self.spaceFour.titleLabel.text isEqualToString:@"O"])
    {
        self.s4 = 2;
    }
    
    if ([self.spaceFive.titleLabel.text isEqualToString:@"X"])
    {
        self.s5 = 1;
    }
    if ([self.spaceFive.titleLabel.text isEqualToString:@"O"])
    {
        self.s5 = 2;
    }

    if ([self.spaceSix.titleLabel.text isEqualToString:@"X"])
    {
        self.s6 = 1;
    }
    if ([self.spaceSix.titleLabel.text isEqualToString:@"O"])
    {
        self.s6 = 2;
    }

    if ([self.spaceSeven.titleLabel.text isEqualToString:@"X"])
    {
        self.s7 = 1;
    }
    if ([self.spaceSeven.titleLabel.text isEqualToString:@"O"])
    {
        self.s7 = 2;
    }

    if ([self.spaceEigth.titleLabel.text isEqualToString:@"X"])
    {
        self.s8 = 1;
    }
    if ([self.spaceEigth.titleLabel.text isEqualToString:@"O"])
    {
        self.s8 = 2;
    }

    if ([self.spaceNine.titleLabel.text isEqualToString:@"X"])
    {
        self.s9 = 1;
    }
    if ([self.spaceNine.titleLabel.text isEqualToString:@"O"])
    {
        self.s9 = 2;
    }

    if (self.s1 == self.s2 && self.s2 == self.s3)
    {
        if (self.s4 == 1)
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if ([self.spaceOne.titleLabel.text isEqualToString:@"O"])
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        
    }
    if (self.s4 == self.s5 && self.s5 == self.s6)
    {
        if (self.s4 == 1)
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if (self.s4 == 2)
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
    }
    if (self.s7 == self.s8 && self.s8 == self.s9)
    {
        if ([self.spaceSeven.titleLabel.text isEqualToString:@"X"])
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if ([self.spaceSeven.titleLabel.text isEqualToString:@"O"])
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
    }
    if (self.s1 == self.s4 && self.s4 == self.s7)
    {
        if ([self.spaceOne.titleLabel.text isEqualToString:@"X"])
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if ([self.spaceOne.titleLabel.text isEqualToString:@"O"])
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
    }
    if (self.s2 == self.s5 && self.s5 == self.s8)
    {
        if ([self.spaceTwo.titleLabel.text isEqualToString:@"X"])
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if ([self.spaceTwo.titleLabel.text isEqualToString:@"O"])
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
    }
    if (self.s3 == self.s6 && self.s6 == self.s9)
    {
        if ([self.spaceThree.titleLabel.text isEqualToString:@"X"])
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if ([self.spaceThree.titleLabel.text isEqualToString:@"O"])
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
    }
    if (self.s1 == self.s5 && self.s5 == self.s9)
    {
        if ([self.spaceOne.titleLabel.text isEqualToString:@"X"])
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if ([self.spaceOne.titleLabel.text isEqualToString:@"O"])
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
    }
    if (self.s3 == self.s5 && self.s5 == self.s7)
    {
        if ([self.spaceThree.titleLabel.text isEqualToString:@"X"])
        {
            self.winner = self.xString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
        if ([self.spaceThree.titleLabel.text isEqualToString:@"O"])
        {
            self.winner = self.oString;
            self.winnerAlert = [UIAlertController alertControllerWithTitle:@"You Win!" message:[NSString stringWithFormat:@"%@ is the winner!!!", self.winner] preferredStyle:UIAlertControllerStyleAlert];
            self.cancel = [UIAlertAction actionWithTitle:@"OK, thanks!" style:UIAlertActionStyleCancel handler:nil];
            [self presentViewController:self.winnerAlert animated:true completion:nil];
            [self.winnerAlert addAction:self.cancel];
        }
    }
}


@end

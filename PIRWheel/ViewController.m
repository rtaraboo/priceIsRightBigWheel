//
//  ViewController.m
//  PIRWheel
//
//  Created by Rosario Tarabocchia on 3/3/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *pirWheelPicker;
@property (nonatomic) NSArray *numbersArray;
@property (weak, nonatomic) IBOutlet UILabel *dollarLabel;
@property (strong, nonatomic) IBOutlet UIImageView *sign;
@property (nonatomic) UIImage *hundredRed;
@property (nonatomic) UIImage *hundredWhite;
@property (nonatomic) UIImage *ninetyFive;
@property (nonatomic) UIImage *ninety;
@property (nonatomic) UIImage *eightyFive;
@property (nonatomic) UIImage *eighty;
@property (nonatomic) UIImage *seventyFive;
@property (nonatomic) UIImage *seventy;
@property (nonatomic) UIImage *sixtyFive;
@property (nonatomic) UIImage *sixty;
@property (nonatomic) UIImage *fiftyFive;
@property (nonatomic) UIImage *fifty;
@property (nonatomic) UIImage *fourtyFive;
@property (nonatomic) UIImage *fourty;
@property (nonatomic) UIImage *thirtyFive;
@property (nonatomic) UIImage *thirty;
@property (nonatomic) UIImage *twentyFive;
@property (nonatomic) UIImage *twenty;
@property (nonatomic) UIImage *fifteen;
@property (nonatomic) UIImage *ten;
@property (nonatomic) UIImage *five;
@property (nonatomic) UIImage *spinSign;
@property (nonatomic) UIImage *overSign;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.sign = [[UIImageView alloc] init];
    
    self.hundredRed = [UIImage imageNamed:@"100red"];
    self.hundredWhite = [UIImage imageNamed:@"100white"];
    self.ninetyFive = [UIImage imageNamed:@"95"];
    self.ninety = [UIImage imageNamed:@"90"];
    self.eightyFive = [UIImage imageNamed:@"85"];
    self.eighty = [UIImage imageNamed:@"80"];
    self.seventyFive = [UIImage imageNamed:@"75"];
    self.seventy = [UIImage imageNamed:@"70"];
    self.sixtyFive = [UIImage imageNamed:@"65"];
    self.sixty = [UIImage imageNamed:@"60"];
    self.fiftyFive = [UIImage imageNamed:@"55"];
    self.fifty = [UIImage imageNamed:@"50"];
    self.fourtyFive = [UIImage imageNamed:@"45"];
    self.fourty = [UIImage imageNamed:@"40"];
    self.thirtyFive = [UIImage imageNamed:@"35"];
    self.thirty = [UIImage imageNamed:@"30"];
    self.twentyFive = [UIImage imageNamed:@"25"];
    self.twenty = [UIImage imageNamed:@"20"];
    self.fifteen = [UIImage imageNamed:@"15"];
    self.ten = [UIImage imageNamed:@"10"];
    self.five = [UIImage imageNamed:@"05"];
    self.spinSign = [UIImage imageNamed:@"spin"];
    self.overSign = [UIImage imageNamed:@"over"];
    
    
    
    [self.dollarLabel setHidden:YES];
    
    self.dollarLabel.text = @"000";
    
    self.numbersArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"wheel1"], [UIImage imageNamed:@"wheel2"],[UIImage imageNamed:@"wheel3"],[UIImage imageNamed:@"wheel4"],[UIImage imageNamed:@"wheel5"],[UIImage imageNamed:@"wheel6"],[UIImage imageNamed:@"wheel7"],[UIImage imageNamed:@"wheel8"],[UIImage imageNamed:@"wheel9"],[UIImage imageNamed:@"wheel10"],[UIImage imageNamed:@"wheel11"],[UIImage imageNamed:@"wheel12"],[UIImage imageNamed:@"wheel13"],[UIImage imageNamed:@"wheel14"],[UIImage imageNamed:@"wheel15"],[UIImage imageNamed:@"wheel16"],[UIImage imageNamed:@"wheel17"], [UIImage imageNamed:@"wheel18"], [UIImage imageNamed:@"wheel19"], [UIImage imageNamed:@"wheel20"], nil];
    
//    THIS IS WHAT WE WILL USE TO STOP USER INTERACTION
//  [self.pirWheelPicker setUserInteractionEnabled:NO];
//  [self.pirWheelPicker setAlpha:.8];
    
    [self.pirWheelPicker selectRow:5001 inComponent:0 animated:YES];
    [self.sign setImage:self.spinSign];
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return 10000;
    
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view


{
    row = row % self.numbersArray.count;
    
    NSUInteger i = row;
    
    UIImageView *pvView = [[UIImageView alloc] initWithImage:self.numbersArray[i]];
    
    return pvView;
    
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    
    return 69;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    ;
    row = row % self.numbersArray.count;
    
    switch(row)
    {
            
        case 0:
            self.dollarLabel.text = @"100";
            [self.sign setImage:self.hundredWhite];
            break;
        case 1:
            [self.sign setImage:self.five];
            self.dollarLabel.text = @"005";
            break;
        case 2:
            [self.sign setImage:self.ninety];
            self.dollarLabel.text = @"090";
            break;
        case 3:
            [self.sign setImage:self.twentyFive];
            self.dollarLabel.text = @"025";
            break;
        case 4:
            [self.sign setImage:self.seventy];
            self.dollarLabel.text = @"070";
            break;
        case 5:
            [self.sign setImage:self.fourtyFive];
            self.dollarLabel.text = @"045";
            break;
        case 6:
            [self.sign setImage:self.ten];
            self.dollarLabel.text = @"010";
            break;
        case 7:
            [self.sign setImage:self.sixtyFive];
            self.dollarLabel.text = @"065";
            break;
        case 8:
            [self.sign setImage:self.thirty];
            self.dollarLabel.text = @"030";
            break;
        case 9:
            [self.sign setImage:self.eightyFive];
            self.dollarLabel.text = @"085";
            break;
        case 10:
            [self.sign setImage:self.fifty];
            self.dollarLabel.text = @"050";
            break;
        case 11:
            [self.sign setImage:self.ninetyFive];
            self.dollarLabel.text = @"095";
            break;
        case 12:
            [self.sign setImage:self.fiftyFive];
            self.dollarLabel.text = @"055";
            break;
        case 13:
            [self.sign setImage:self.seventyFive];
            self.dollarLabel.text = @"075";
            break;
        case 14:
            [self.sign setImage:self.fourty];
            self.dollarLabel.text = @"040";
            break;
        case 15:
            [self.sign setImage:self.twenty];
            self.dollarLabel.text = @"020";
            break;
        case 16:
            [self.sign setImage:self.sixty];
            self.dollarLabel.text = @"060";
            break;
        case 17:
            [self.sign setImage:self.thirtyFive];
            self.dollarLabel.text = @"035";
            break;
        case 18:
            [self.sign setImage:self.eighty];
            self.dollarLabel.text = @"080";
            break;
        case 19:
            [self.sign setImage:self.fifteen];
            self.dollarLabel.text = @"015";
            break;


            
    }
    
}

@end

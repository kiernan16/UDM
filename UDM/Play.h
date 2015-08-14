//
//  Play.h
//  UDM
//
//  Created by Matthew Kiernan on 2/11/14.
//  Copyright (c) 2014 Matthew Kiernan. All rights reserved.
//



#import <UIKit/UIKit.h>


@interface Play : UIViewController
{

    IBOutlet UIButton *Start;
    IBOutlet UIButton *Back;
    
    IBOutlet UIImageView *YesCar;
    IBOutlet UIImageView *NoCar;
    
    IBOutlet UILabel *three;
    IBOutlet UILabel *two;
    IBOutlet UILabel *one;
    IBOutlet UILabel *go;
    IBOutlet UILabel *yesLable;
    IBOutlet UILabel *noLable;
    
    NSTimer *CountdownTimer, *RaceTimer;
    
}

-(IBAction)Start:(id)sender;
-(void) Countdown;
-(void) Race;

-(NSUInteger)supportedInterfaceOrientations;


@end




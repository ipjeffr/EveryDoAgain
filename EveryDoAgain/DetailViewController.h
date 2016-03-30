//
//  DetailViewController.h
//  EveryDoAgain
//
//  Created by Tenzin Phagdol on 2016-03-30.
//  Copyright © 2016 Jeffrey Ip. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MasterViewController;
@class ToDo;

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *titleDetailsLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionDetailsLabel;


@end


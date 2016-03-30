//
//  TableViewCell.h
//  EveryDoAgain
//
//  Created by Tenzin Phagdol on 2016-03-30.
//  Copyright © 2016 Jeffrey Ip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleOutput;
@property (weak, nonatomic) IBOutlet UILabel *descriptionOutput;
@property (weak, nonatomic) IBOutlet UILabel *priorityOutput;

@end

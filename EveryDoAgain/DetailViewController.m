//
//  DetailViewController.m
//  EveryDoAgain
//
//  Created by Tenzin Phagdol on 2016-03-30.
//  Copyright © 2016 Jeffrey Ip. All rights reserved.
//

#import "DetailViewController.h"
#import "MasterViewController.h"
#import "ToDo.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.descriptionDetailsLabel.text = self.detailItem.toDoDescription;
        self.titleDetailsLabel.text = self.detailItem.toDoTitle;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ModalViewController.m
//  EveryDoAgain
//
//  Created by Tenzin Phagdol on 2016-03-30.
//  Copyright © 2016 Jeffrey Ip. All rights reserved.
//

#import "ModalViewController.h"
#import "AppDelegate.h"
#import "ToDo.h"

@interface ModalViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priorityTextInput;
@property (weak, nonatomic) IBOutlet UITextField *titleTextInput;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextInput;

@end

@implementation ModalViewController
- (IBAction)addToDoItem:(id)sender {
    //store data from textfields and add it to database
    //first, call the managedObjectContext from the AppDelegate (see first two lines)
    
    AppDelegate* del = (AppDelegate*)[UIApplication sharedApplication].delegate;
    ToDo *newToDo = [NSEntityDescription insertNewObjectForEntityForName:@"ToDo" inManagedObjectContext:del.managedObjectContext];
    newToDo.priority = self.priorityTextInput.text;
    newToDo.toDoTitle = self.titleTextInput.text;
    newToDo.toDoDescription = self.descriptionTextInput.text;
    
    [del saveContext];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

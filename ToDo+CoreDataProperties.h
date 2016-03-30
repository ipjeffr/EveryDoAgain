//
//  ToDo+CoreDataProperties.h
//  EveryDoAgain
//
//  Created by Tenzin Phagdol on 2016-03-30.
//  Copyright © 2016 Jeffrey Ip. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *priority;
@property (nullable, nonatomic, retain) NSString *toDoDescription;
@property (nullable, nonatomic, retain) NSString *toDoTitle;

@end

NS_ASSUME_NONNULL_END

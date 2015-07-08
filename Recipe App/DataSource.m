//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Gamaliel Tellez on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DataSource.h"
#import "Recipes.h"
@implementation DataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    NSString *reuseIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    }
    cell.textLabel.text = [Recipes titleAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor redColor];
    cell.detailTextLabel.text = [Recipes descriptionAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = [UIColor brownColor];
    
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   
    return [Recipes count];
    
}

@end


//
//  RecipeDetailViewController.m
//  Recipe App
//
//  Created by Gamaliel Tellez on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import "RARecipes.h"
#import "RecipeViewController.h"
static int topMargin = 20;

@interface RecipeDetailViewController ()


@end

@implementation RecipeDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    self.recipeIndex = [RecipeViewController ind];
    
    //creating the scroll view
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    //adding scroolview onto the view controller's view
    [self.view addSubview:scrollView];
    
    //creating label,
    UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(topMargin, 20, self.view.frame.size.width - 2 * topMargin, 100)];
    descriptionLabel.backgroundColor = [UIColor greenColor];
    descriptionLabel.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    descriptionLabel.numberOfLines = 5;
    //depracated uitext allignment center
    //descriptionLabel.textAlignment = UITextAlignmentCenter;
    [descriptionLabel setTextAlignment:NSTextAlignmentJustified];
    [descriptionLabel setFont:[UIFont fontWithName:@"Arial" size:15]];
    [scrollView addSubview:descriptionLabel];
    
    
    


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

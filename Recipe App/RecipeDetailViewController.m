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

static int margin =15;
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
    
    
    //creating ingredients label
    
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.recipeIndex]; i++)
    {
        
        int margin = 20;
        int yPoint = 140;
        
     // slcaked to us needs help
        
        UILabel *volume = [[UILabel alloc] initWithFrame:CGRectMake(margin, yPoint, (self.view.frame.size.width - 2 * margin) / 4, 20)];
        volume.font = [UIFont boldSystemFontOfSize:17];
        volume.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:volume];
        
        // The width of the type is just the remaining space. It's possible that this get's truncated, because I'm not wrapping text here.
        
        UILabel *type = [[UILabel alloc] initWithFrame:CGRectMake(margin + (self.view.frame.size.width - 2 * margin) / 4, topMargin * 2i, (self.view.frame.size.width - 2 * margin) * 3 / 4, 20)];
        type.numberOfLines = 0;
        type.font = [UIFont systemFontOfSize:15];
        type.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:type];
        
        // Volume and type are on the same line, so we only update the top margin after they are added to the scrollview
        
        topMargin += (20 + margin);
        
    }
   
}


- (CGFloat)heightOfReferenceString:(NSString *)reference {
    
    CGRect bounding = [reference boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2 * margin, 0)
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}
                                              context:nil];
    
    return bounding.size.height;
    
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

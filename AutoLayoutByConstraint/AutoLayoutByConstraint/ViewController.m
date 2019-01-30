//
//  ViewController.m
//  AutoLayoutByConstraint
//
//  Created by 李朴之 on 2019/1/30.
//  Copyright © 2019 Puzhi Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // self.view.backgroundColor = [UIColor redColor];
    
    UIImageView* logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"apple.jpg"]];
    logoImageView.translatesAutoresizingMaskIntoConstraints = NO;
    logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:logoImageView];
    
    //logoImageView左侧与父视图左侧对齐
    NSLayoutConstraint* leftConstraint = [NSLayoutConstraint constraintWithItem:logoImageView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.0f];
    
    //logoImageView右侧与父视图右侧对齐
    NSLayoutConstraint* rightConstraint = [NSLayoutConstraint constraintWithItem:logoImageView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.0f];
    
    //logoImageView顶部与父视图顶部对齐
    NSLayoutConstraint* topConstraint = [NSLayoutConstraint constraintWithItem:logoImageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.0f];
    
    //logoImageView高度为父视图高度一半
    NSLayoutConstraint* heightConstraint = [NSLayoutConstraint constraintWithItem:logoImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.5f constant:0.0f];
    
    //iOS 6.0或者7.0调用addConstraints
    //    [self.view addConstraints:@[leftConstraint, rightConstraint, topConstraint, heightConstraint]];
    
    //iOS 8.0以后设置active属性值
    //leftConstraint.active = YES;
    //rightConstraint.active = YES;
    //topConstraint.active = YES;
    //heightConstraint.active = YES;
    
    //iOS 8.0以后推荐使用activateConstraints:方法，效率比单独设置active属性要高
    [NSLayoutConstraint activateConstraints:@[leftConstraint, rightConstraint, topConstraint, heightConstraint]];
    
    UIScrollView* scrollView = [UIScrollView new];
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:scrollView];
    
    //scrollView左侧与父视图左侧对齐
    NSLayoutConstraint* scrollLeftConstraint = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.0f];
    
    //scrollView右侧与父视图右侧对齐
    NSLayoutConstraint* scrollRightConstraint = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.0f];
    
    //scrollView底部与父视图底部对齐
    NSLayoutConstraint* scrollBottomConstraint = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.0f];
    
    //scrollView顶部与logoImageView底部对齐
    NSLayoutConstraint* scrollTopConstraint = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:logoImageView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.0f];
    
    [NSLayoutConstraint activateConstraints:@[scrollLeftConstraint, scrollRightConstraint, scrollBottomConstraint, scrollTopConstraint]];
    
    UILabel* nameLabel = [UILabel new];
    nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    nameLabel.text = @"苹果公司";
    nameLabel.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:nameLabel];
    
    UILabel* descriptionLabel = [UILabel new];
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    descriptionLabel.text = @"苹果公司（Apple Inc. ）是美国的一家高科技公司。由史蒂夫·乔布斯、斯蒂夫·沃兹尼亚克和罗·韦恩(Ron Wayne)等三人于1976年4月1日创立，并命名为美国苹果电脑公司（Apple Computer Inc. ）， 2007年1月9日更名为苹果公司，总部位于加利福尼亚州的库比蒂诺。\n苹果公司创立之初主要开发和销售的个人电脑，截至2014年致力于设计、开发和销售消费电子、计算机软件、在线服务和个人计算机。苹果的Apple II于1970年代助长了个人电脑革命，其后的Macintosh接力于1980年代持续发展。该公司硬件产品主要是Mac电脑系列、iPod媒体播放器、iPhone智能手机和iPad平板电脑；在线服务包括iCloud、iTunes Store和App Store；消费软件包括OS X和iOS操作系统、iTunes多媒体浏览器、Safari网络浏览器，还有iLife和iWork创意和生产力套件。苹果公司在高科技企业中以创新而闻名世界。\n苹果公司1980年12月12日公开招股上市，2012年创下6235亿美元的市值记录，截至2014年6月，苹果公司已经连续三年成为全球市值最大公司。苹果公司在2014年世界500强排行榜中排名第15名。2013年9月30日，在宏盟集团的“全球最佳品牌”报告中，苹果公司超过可口可乐成为世界最有价值品牌。2014年，苹果品牌超越谷歌（Google），成为世界最具价值品牌 。";
    descriptionLabel.numberOfLines = 0;
    descriptionLabel.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:descriptionLabel];
    
    //nameLabel左侧与父视图左侧对齐
    NSLayoutConstraint* nameLabelLeftConstraint = [NSLayoutConstraint constraintWithItem:nameLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:scrollView attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.0f];
    
    //nameLabel右侧与父视图右侧对齐
    NSLayoutConstraint* nameLabelRightConstraint = [NSLayoutConstraint constraintWithItem:nameLabel attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:scrollView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.0f];
    
    //nameLabel底部与descriptionLabel顶部对齐
    NSLayoutConstraint* nameLabelBottomConstraint = [NSLayoutConstraint constraintWithItem:nameLabel attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:descriptionLabel attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.0f];
    
    //nameLabel顶部与父视图顶部对齐
    NSLayoutConstraint* nameLabelTopConstraint = [NSLayoutConstraint constraintWithItem:nameLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:scrollView attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.0f];
    
    //nameLabel高度为20
    NSLayoutConstraint* nameLabelHeightConstraint = [NSLayoutConstraint constraintWithItem:nameLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:20.0f];
    
    [NSLayoutConstraint activateConstraints:@[nameLabelLeftConstraint, nameLabelRightConstraint, nameLabelBottomConstraint, nameLabelTopConstraint, nameLabelHeightConstraint]];
    
    //descriptionLabel左侧与父视图左侧对齐
    NSLayoutConstraint* descriptionLabelLeftConstraint = [NSLayoutConstraint constraintWithItem:descriptionLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:scrollView attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.0f];
    
    //descriptionLabel右侧与父视图右侧对齐
    NSLayoutConstraint* descriptionLabelRightConstraint = [NSLayoutConstraint constraintWithItem:descriptionLabel attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:scrollView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.0f];
    
    //descriptionLabel底部与父视图底部对齐
    NSLayoutConstraint* descriptionLabelBottomConstraint = [NSLayoutConstraint constraintWithItem:descriptionLabel attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:scrollView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.0f];
    
    [NSLayoutConstraint activateConstraints:@[descriptionLabelLeftConstraint, descriptionLabelRightConstraint, descriptionLabelBottomConstraint]];
    
    //nameLabel宽度与logoImageView宽度相等
    NSLayoutConstraint* nameLabelWidthConstraint = [NSLayoutConstraint constraintWithItem:nameLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:logoImageView attribute:NSLayoutAttributeWidth multiplier:1.0f constant:0.0f];
    
    //nameLabel宽度与logoImageView宽度相等
    NSLayoutConstraint* descriptionLabelWidthConstraint = [NSLayoutConstraint constraintWithItem:descriptionLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:logoImageView attribute:NSLayoutAttributeWidth multiplier:1.0f constant:0.0f];
    
    [NSLayoutConstraint activateConstraints:@[nameLabelWidthConstraint, descriptionLabelWidthConstraint]];
}


@end

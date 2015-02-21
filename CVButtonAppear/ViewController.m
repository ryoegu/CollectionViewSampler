//
//  ViewController.m
//  CVButtonAppear
//
//  Created by Ryo Eguchi on 2015/02/21.
//  Copyright (c) 2015年 Ryo Eguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //配列を用意しよう
    priceArray = [NSArray arrayWithObjects:@"140円",@"150円",@"追加",nil];
    
    //delegateとdatasourceは必ず用意しよう
    PriceCollectionView.delegate=self;
    PriceCollectionView.dataSource=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//35行目、39行目、43行目はCollectionViewで必ず必要なメソッド
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1; //セクション数（通常は1）
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [priceArray count];  //セルの個数
}
//セルの内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //45行目は必ず必要な内容。PriceCollectionViewは◀の~Cell.hにあわせよう
    PriceCollectionViewCell *cell=(PriceCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    //各セルにpriceArrayの内容をセット
    cell.priceLabel.text = priceArray[indexPath.row];
    return cell;

}


//セルをクリックしたら呼び出される処理。かいても書かなくてもOK。
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Clicked %ld-%ld",(long)indexPath.section,(long)indexPath.row);
}



@end

//
//  ViewController.m
//  CollectionTutorial18
//
//  Created by techmaster on 10/18/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSString *)RemoveCharacter:(NSString *)str  addChar:(NSString*)var addChar2:(NSString*)var2 addChar3:(NSString*)var3{
    while ([str rangeOfString:var].location != NSNotFound) {
        str = [str stringByReplacingOccurrencesOfString:var2 withString:var3];
    }
    return str;
}

#pragma mark - Array
- (IBAction)demoArray:(id)sender {
    NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"ABC", @"DEF", nil];
    
    NSArray *array = @[@"Hello World", @12, [UIColor blackColor], self, mutableArray];
    
    [array[4] addObject:@"IJK"];  //Từng phần tử trong NSArray có thể gọi hàm để thay đổi chính nó
    //array[4] = @12; đối với NSArray, không được phép gán, thay đổi địa chỉ con trỏ của phần tử
    
    
    for (id object in array) {
        NSLog(@"%@ - %@", object, [object class]);
    }
    //Tuyệt đối không dùng kiểu quá chi tiết, cụ thể đối với trường hợp mảng có nhiều phần tử khác kiểu nhau
    /*for (NSNumber *number in array) {
        NSLog(@"%@", number);
    }*/
    
    for (int i= 0; i < [array count]; i++) {
        id object = array[i];
        NSLog(@"%@ - %@", object, [object class]);
    }
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"data" withExtension:@"plist"];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    
    NSArray *arrayFromPlist = [NSArray arrayWithContentsOfURL:url];
    
    NSArray *arrayFromPlist2 = [NSArray arrayWithContentsOfFile:filePath];

    
    if ([arrayFromPlist isEqualToArray:arrayFromPlist2]) {
        NSLog(@"Totally Equal!");
    }
    
    
    
}
#pragma mark - NSMutableArray
- (IBAction)demoMutableArray:(id)sender {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];

    NSMutableArray *array = [NSMutableArray arrayWithContentsOfFile:filePath];
    [array addObject:@123];
    [array removeObject: [array firstObject]];
    array[0] = @3.14158f;
    NSLog(@"%@", array);
    
    NSMutableArray *array2 = [NSMutableArray arrayWithArray:@[@"ABC", @"DEF", @"IJK"]];
    NSMutableArray *array3 = [NSMutableArray arrayWithCapacity:100]; //dành ra một vùng nhớ 100 * 4 bytes
    //cho đến iOS6: iOS là hệ điều hành 32 bit. Con trỏ có khả năng đánh địa chỉ 32 bit ~ 4 bytes.
    //Tối đa có thể đánh được địa chỉ RAM là 4GB.
    //iOS7 ở iPhone 5S sẽ hỗ trợ ứng dụng 64 bit.
    
    
    [array2 exchangeObjectAtIndex:2 withObjectAtIndex:0];
    
    
    NSMutableArray *array4 = [NSMutableArray arrayWithArray:@[@"A", @"B", @"C", @"D", @"E", @"F"]];
    NSMutableIndexSet *indexSet = [[NSMutableIndexSet alloc] initWithIndex:1];
    [indexSet addIndex:3];
    NSLog(@"%@", indexSet);
    
    [array4 insertObjects:@[@"1", @"2"] atIndexes:indexSet];
    NSLog(@"%@", array4);
    
    for (int i=0; i< 100; i++) {
        NSLog(@"%d", arc4random()%100); //Random trả về số nguyên từ 1 đến 100
    }
}

#pragma mark - Dictionary
- (IBAction)demoDictionary:(id)sender {
    NSDictionary *dic = @{@"A": @[@"Alber", @"Antonio", @"Alibaba"],
                          @"B": @[@"Brazil", @"Babeta", @"Bababa"],
                          @"C": @[@"Canbera"]};
    NSLog(@"%@", dic[@"A"]);
    NSLog(@"%@", dic[@"B"]);
    NSLog(@"%@", dic[@"C"]);
    
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic setObject:@[@"Diva", @"Daltero"] forKey:@"D"];
    
    [mDic setObject:@[@"Diva", @"Daltero", @"Dakota"] forKey:@"D"];
    
    NSLog(@"%@", mDic[@"D"]);
  
}

#pragma mark - Set
- (IBAction)demoSet:(id)sender {
    NSMutableSet *setA = [[NSMutableSet alloc] initWithObjects:@"A", @"B", @"C", @"A", @"B", @"B", nil];
    NSLog(@"%@", setA);
    
    NSMutableSet *setB = [[NSMutableSet alloc] initWithObjects:@"B", @"C", @"D", nil];

    //[setA intersectSet:setB];
    [setA unionSet:setB];
    NSLog(@"%@", setA);
    
    
    NSCountedSet *cSet = [[NSCountedSet alloc] initWithObjects:@"A", @"B", @"C", @"A", @"B", @"B", nil];
    NSLog(@"%@", cSet);
}

- (IBAction)tabOnRead:(id)sender {
    NSArray *arr = @[@1, @3, @4, @6, @6, @3, @1, @3];
    NSCountedSet *totalSet = [NSCountedSet setWithArray:arr];
    NSMutableArray *dictArray = [NSMutableArray array];
    for (NSNumber *num in totalSet) {
        NSDictionary *dict = @{@"number":num, @"count":@([totalSet countForObject:num])};
        [dictArray addObject:dict];
    }
    NSArray *final = [dictArray sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"number" ascending:NO ]]];
    NSLog(@"%@",final);
}

- (IBAction)tabOnHomeWork:(id)sender {
    
    NSString *path = @"/Users/SCN/Desktop/putin.txt";//[[NSBundle mainBundle] pathForResource:@"huy" ofType:@"rtf"];
    NSString *contents = [NSString stringWithContentsOfFile:path encoding:NSASCIIStringEncoding error:nil];
    contents = [self RemoveCharacter:contents addChar:@"—" addChar2:@"-" addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@"." addChar2:@"." addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@"," addChar2:@"," addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@"""" addChar2:@"""" addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@"'" addChar2:@"'" addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@"  " addChar2:@"  " addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@":" addChar2:@":" addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@"\n" addChar2:@"\n" addChar3:@" "];
    contents = [self RemoveCharacter:contents addChar:@"?" addChar2:@"?" addChar3:@" "];
    NSArray *array = [contents componentsSeparatedByString:@" "];
    NSArray *var = @[@"A",@"a",@"The",@"the",@"No",@"no",@"one",@"One",
                                                   @"between",@"by",@"this",@"This",@"or",
                                                   @"is",@"are",@"was",@"were",@"if",@"then",
                                                   @"too",@"to",@"who",@"cannot",@"how",@"of",
                                                   @"on",@"out",@"every",@"their",@"In",@"with",@"these",
                                                   @"will",@"its",@"Their",@"ever",@"in",@"at",@"us",
                                                   @"under",@"after",@"It",@"it",@"have",@"all",@"If",
                                                   @"we",@"We",@"that",@"and",@"as",@"but",@"an",@"from",@"you"];
    
    NSMutableArray *array1 = [[NSMutableArray alloc]init];
    int i = 0;
    for (id object in array) {
        NSArray *a1 = [[NSArray alloc]initWithObjects:object, nil];
        BOOL check = YES;
        for (id objectt in var) {
            NSArray *a2 = [[NSArray alloc]initWithObjects:objectt, nil];
            if ([a1 isEqualToArray:a2]) {
                check = NO;
            }
        }
        if (check) {
            [array1 insertObject:object atIndex:i];
            i++;
        }
    }
    
    //NSMutableSet *set =[[NSMutableSet alloc]initWithArray:array1];
    NSCountedSet *cset = [[NSCountedSet alloc]initWithArray:array1];
    NSMutableArray *sarray = [NSMutableArray array];
    for (NSNumber *num in cset) {
        NSDictionary *dict = @{@"Word":num, @"count":@([cset countForObject:num])};
        [sarray addObject:dict];
    }
    NSArray *final = [sarray sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"count" ascending:NO ]]];
    NSLog(@"%@",final);
}


@end

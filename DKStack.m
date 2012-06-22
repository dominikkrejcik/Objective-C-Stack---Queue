//
//  DKStack.m
//
//  Created by Dominik Krejčík on 25/09/2011.
//  Feel free to use and distribute as long as you mention me. Or buy me a beer.
//

#import "DKStack.h"

@implementation DKStack

-(id)init
{
	if ( (self = [super init]) ) {
		array = [[NSMutableArray alloc] init];
	}

	return self;
}

-(id)pop 
{
	id object = [self peek];
	[array removeLastObject];
	return object;
}

-(void)push:(id)element 
{
    [array addObject:element];
}

-(id)peek 
{
    return [array lastObject];
}

-(NSInteger)size 
{
    return [array count];
}

-(BOOL)isEmpty 
{
    return [array count] == 0;
}

-(void)clear 
{
    [array removeAllObjects];
}

@end

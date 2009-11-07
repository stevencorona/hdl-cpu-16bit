#import <Foundation/Foundation.h>
#import "parser.h"

int const A_COMMAND = 1;
int const C_COMMAND = 2;
int const L_COMMAND = 3;

@implementation Parser
  -(id)initWithFile:(NSString*)file {
    [super init];
    return self;
  }
  
  -(bool)hasMoreCommands {
    return true;
  }
  
  -(void)advance {
    
  }
  
  -(int)commandType {
    return 1;
  }
  
  -(NSString*)symbol {
    return @"test";
  }
  
  -(NSString*)dest {
    return @"test";
  }
  
  -(NSString*)comp {
    return @"test";
  }
  
  -(NSString*)jump {
    return @"test";
  }

@end
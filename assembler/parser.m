#import <Foundation/Foundation.h>
#import "parser.h"

int const A_COMMAND = 1;
int const C_COMMAND = 2;
int const L_COMMAND = 3;

@implementation Parser
  -(id)initWithFile:(NSString*)file {
    [super init];
    
    NSString *program = [NSString stringWithContentsOfFile:file];
    commands = [program componentsSeparatedByString:@"\n"];
    commands_index = 0;
    
    return self;
  }
  
  -(bool)hasMoreCommands {
    
    if ( [commands count] == commands_index ) {
      return false;
    } else {
      return true;
    }
    
  }
  
  -(void)advance {
    commands_index++;
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
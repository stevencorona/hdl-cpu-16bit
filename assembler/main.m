#import <Foundation/Foundation.h>
#import "parser.h"

int main(void*i) {
  
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  Parser *parser = [[Parser alloc] initWithFile:@"filename"];
  
  [pool release];
  
  return 0;
}

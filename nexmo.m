#import <stdio.h>
#import <Foundation/Foundation.h>

int main(int argc, const char* argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"https://rest.nexmo.com/sms/json"];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];

        NSString *text = [@"Hello world" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSString *toNumber = @"919980902557";
        NSString *requestString = [NSString stringWithFormat:@"api_key=273d4688&api_secret=e345b72a&from=rahul&to=%@&text=%@", toNumber, text];
        NSData *requestBody = [requestString dataUsingEncoding:NSUTF8StringEncoding];

        [request setHTTPMethod:@"POST"];
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:requestBody];

        NSURLResponse *response = NULL;
        NSError *requestError = NULL;
        NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&requestError];
        NSString *responseString = [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease];
        NSLog(responseString);
        return 0;
    }
}

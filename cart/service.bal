import ballerina/log;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "cart",
	id: "cart-5699eea3-f225-49e8-91bb-723a26e8db4d"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        log:printInfo("greeting resource called for name: " + name);
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}

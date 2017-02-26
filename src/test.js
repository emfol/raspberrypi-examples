/**
 * Test
 */

'use strict';

var timer,
    count = 0,
    limit = 3,
    delay = 1000;

(function main() {
    var message;
    if (count < limit) {
        message = 'Hello World! #' + ++count + '/' + limit;
        setTimeout(main, delay);
    } else {
        message = 'Bye!';
    }
    console.log(message);
}());


# B4X-What3Words

This is a b4xlib used in B4A and B4i for getting What3Words to coordinates, coordinates to What3Words and your location to What3Words. It requres my FusedLocation library which you can find here:

https://www.b4x.com/android/forum/threads/b4x-fused-location-b4xlibrary.116055

The object is W3W and when you define it <pre>Dim w3w2 As W3W</pre> you can write in the IDE the method <pre>w3w2.Instructions</pre> and you will get in the appearing code of this sub instructions on how to use it.

For those of you that do not now what "What3Words" is, it is an easily read coordination system. What they did is that they devided the whole earth in 3 by 3 meters squares and thus they 've got almost 58 * 10^12 squares. These are a lot of squares to mention in positioning. But if you change the base of the positioning system from 10 to almost 40000 the digits of mentioning the desired square are reduced to just 3. The "digits" can be anything from 0 to 39999 (assuming 40000 as the base - it is lower). In order to make the "lock" of the positioning easy to remember they assigned to each digit one word. Thus what3words AAAA.BBBB.CCCC refer to a specific 3x3 meters square on the surface of the Earth.

This library is a donationware so you can download it but if you want to use it in your projects you are required to donate as it takes time researching, thinking and implementing intellectual programming works. It requires an API key you will get from the site "what3words.com".

You can donate here:
https://www.paypal.com/paypalme/DHQI/5EUR

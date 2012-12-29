##Send Data from Javascript to Objective-C

Check out my site here: http://sruiz.co.uk/

And the Article about how pass data or messages from javascript to objective-c: http://sruiz.co.uk/sruiz/js-to-objc/

----HTML Snippet----

<script>
    Cocoa.log('Message from Javascript!');
</script>

------Article-------

I’m usually much more comfortable developing applications using Java or C#, or web applications using Javascript, PHP and HTML/CSS; however as I love developing for Mac I have started practicing developing with Xcode in Objective-C. It’s a bit different to what I’m used to in Java. What I’m going to cover in this post is how to pass data from Javascript in a WebView to Objective-C. This has lots of uses and it’s great to make web apps interact with the desktop environment.

I’m going to assume you’re reasonably happy with creating webViews and programmatically assigning URLs to them. If not, check out my post on how to create a browser app.
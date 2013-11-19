# Scrath 2

After a long time developing ScrathFramework, I decided to put it easier and more flexible.
So I started Scrath 2 project...

With Scrath2 you have more freedom during development and fast prototype using only what you need to use, I called it "plugins". You can import those plugins inside your main stylesheet separating better your project.

´´´
@import url('scrath.css'); /* Framework Core (The Grid system) */
@import url('plugins/debugger.css'); /* Grid debugger */
@import url('plugins/icons.css'); /* Font Awesome icons */
@import url('plugins/form.css'); /* Default framework Form (Taken from SF) */
@import url('plugins/button.css'); /* Default framework Buttons (Taken from SF) */
´´´

From ScrathFramework I removed a lot of old features that gave me a lot of problems such: Navbar, CSS Carousel and Lightbox effect in CSS. The animations ware very dificult to implement and I wanted something easier, it still with forms, icons and buttons, just the lightweight features from ScrathFramework
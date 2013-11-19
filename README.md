# Scrath 2

[How to use](#how-to-use) | [The Grid](#the-grid) | [Containers](#containers) | [Rows](#rows) | [Blocks](#blocks) | [Nesting](#nesting)

After a long time developing ScrathFramework, I decided to put it easier and more flexible.
So I started Scrath 2 project...

With Scrath2 you have more freedom during development and fast prototype using only what you need to use, I called it "plugins". You can import those plugins inside your main stylesheet separating better your project.

```css
@import url('scrath.css'); /* Framework Core (The Grid system) */
@import url('plugins/debugger.css'); /* Grid debugger */
@import url('plugins/icons.css'); /* Font Awesome icons */
@import url('plugins/form.css'); /* Default framework Form (Taken from SF) */
@import url('plugins/button.css'); /* Default framework Buttons (Taken from SF) */
```

From ScrathFramework I removed a lot of old features that gave me a lot of problems such: Navbar, CSS Carousel and Lightbox effect in CSS. The animations ware very dificult to implement and I wanted something easier, it still with forms, icons and buttons, just the lightweight features from ScrathFramework.

# Features
* Mobile First grid
* Bundled plugins (bellow)
* Form
* Icons
* Buttons
* Debugger (For grid system)

# How to use
A simply documentation of how to use S2 in your projects and made a easier and fast web development/prototyping.
The documentation bellow will show you only how to use the CORE of Scrath2 - The Grid system! Plugins documentarion you can find on our Wiki.

## The Grid
The grid system is the core of S2, it uses easy conventions of class names used in most CSS Frameworks in the market. This grid has only 3 columns for design proposes but you can extend it nesting containers, rows and blocks.

### Containers:

Simply container: 85% width
```html
<div class="container"></div>
```

Full container: 100% width
```html
<div class="container-fluid"></div>
```

Fixed container: 1200px width
```html
<div class="container-fix"></div>
```

### Rows:
After add a container you must have ROWS, the rows you put inside the container and have a 100% width
```html
<div class="container">
	<div class="row"></div>
</div>
```

### Blocks:
The last past of grids are the blocks to put your content, everything is flexible using % so, you dont have to worry about block width. There is 4 type of blocks: .block1, .block2, .block2-2 and block3. Made some tests and check them working, but remember:
In one row you can put:

3 .block1; 
```html
<div class="container">
	<div class="row">
		<div class="block1"></div>
		<div class="block1"></div>
		<div class="block1"></div>
	</div>
</div>
```

1 .block2 + 1 .block1; 
```html
<div class="container">
	<div class="row">
		<div class="block1"></div>
		<div class="block2"></div>
	</div>
</div>
```

2 .block2-2; 
```html
<div class="container">
	<div class="row">
		<div class="block2-2"></div>
		<div class="block2-2"></div>
	</div>
</div>
```

1 .block3
```html
<div class="container">
	<div class="row">
		<div class="block3"></div>
	</div>
</div>
```

### Nesting
If you want to extend the grid system you can nest and made combinations:

This example shows a 4(creepy) grid system
```html
<div class="container">
	<div class="row">
		<div class="block2-2">
			<div class="row">
				<div class="block2-2">
					1 Column
				</div>
				<div class="block2-2">
					2 Column
				</div>
			</div>
		</div>
		<div class="block2-2">
			<div class="row">
				<div class="block2-2">
					3 Column
				</div>
				<div class="block2-2">
					4 Column
				</div>
			</div>
		</div>
	</div>
</div>
```

#### Much blocks in one ROW
If you want to create only one row tou can use .begin
```html
<div class="container">
	<div class="row">
		<div class="block2-2"></div>
		<div class="block2-2"></div>
		<div class="block2-2 begin"></div>
		<div class="block2-2"></div>
		<div class="block1 begin"></div>
		<div class="block1"></div>
		<div class="block1"></div>
	</div>
</div>
```

#### Centering block
Sometimes you dont need to use a lot of blocks in one project, but need a width to create them, so why can't you center a block?
```html
<div class="container">
	<div class="row">
		<div class="block1 middle"></div>
	</div>
	<div class="row">
		<div class="block2-2 middle"></div>
	</div>
</div>
```
# Scrath 2
[![Build Status](https://travis-ci.org/gustavokuklinski/Scrath2.png?branch=master)](https://travis-ci.org/gustavokuklinski/Scrath2)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/gustavokuklinski/scrath2/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

[Development Web Server](#development-web-server) | [How to use](#how-to-use) | [The Grid](#the-grid) | [Containers](#containers) | [Rows](#rows) | [Blocks](#blocks) | [Nesting](#nesting)

Scrath2 is a tiny framework for web/mobile development and fast prototype using only what you need to use: The "plugins". You can import those plugins inside your main stylesheet separating better your project.

```css
@import url('scrath-single.css'); /* Framework Core (The Grid system) */
```

```html
<link rel="stylesheet" href="scrath-single.css" /> <!-- Framework Core (The Grid system) -->
```

Vendor plugins. Default Bundle

Import on CSS
```css
@import url('plugins/icons.css'); /* Font Awesome icons */
@import url('plugins/form.css'); /* Default framework Form */
@import url('plugins/button.css'); /* Default framework Buttons */
@import url('plugins/visibility.css'); /* Default framework Buttons */
```

Or HTML calls
```html
<link rel="stylesheet" href="plugins/icons.css" /> <!-- Font Awesome icons -->
<link rel="stylesheet" href="plugins/form.css" /> <!-- Default framework Form -->
<link rel="stylesheet" href="plugins/button.css" /> <!-- Default framework Buttons -->
<link rel="stylesheet" href="'plugins/visibility.css" /> <!-- Visibility on Handlet or Desktop -->
```

Extra plugins add some features to S2
```css
@import url('plugins/extra/debugger.css'); /* Grid debugger */
@import url('plugins/extra/hover-zoom.css'); /* Zoom image gallery just Hovering */
@import url('plugins/extra/navbar.css'); /* Responsive Navbar with one level submenu */
```

```html
<link rel="stylesheet" href="plugins/extra/debugger.css" /> <!-- Grid debugger -->
<link rel="stylesheet" href="plugins/extra/hover-zoom.css" /> <!-- Zoom image gallery just Hovering -->
<link rel="stylesheet" href="plugins/extra/navbar.css" /> <!-- Responsive Navbar with one level submenu -->
```

Or use a bundled Scrath with all vendor plugins already included. Just the EXTRAS are optional.

```css
@import url('scrath-bundle.css'); /* All framework in one file */
```
```html
<link rel="stylesheet" href="scrath-bundle.css" />
```


# Features
* Mobile First grid

### Bundled plugins
* Form
* Icons
* Buttons
* Visibility

### Extra plugins
* Extra/Hover-Zoom
* Extra/Navbar
* Extra/Debugger (For grid system)

# Tools
Including a PSD(for photoshop) and XFC(for GIMP) for designers do build projects under Scrath2 Grid system.

# Development Web Server
Allow the developer building plugins for S2 and auto-compiling SASS into CSS and Unit Tests to start the server
```bash
$ruby webserver.rb
```
And follow the debugging messages

# How to use
A simply documentation of how to use S2 in your projects and made a easier and fast web development/prototyping.
The documentation bellow will show you only how to use the CORE of Scrath2 - The Grid system! Plugins documentation will come soon!

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

# Contribuitors
<a href="http://limatorres.com.br/" target="_blank">Gustavo Torres</a> - PSD Grid

# License
This project is under MIT License. Check the LICENSE file.


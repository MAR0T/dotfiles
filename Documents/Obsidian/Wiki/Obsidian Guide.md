## What is Obsidian?

Obsidian.md is a [markdown](https://www.markdownguide.org/getting-started/) text editor. It is different from other markdown editors because it has jumped on the _linked thought_ band wagon. “Linked Thought” refers to a group of note taking applications that allow you to seamlessly link thoughts and notes together. It is like having your very own wikipedia. The applications go much further than note taking. Applications like [Obsidian.md](https://obsidian.md/) and [Roam Research](https://roamresearch.com/) are spearheading a [knowledge management](https://en.wikipedia.org/wiki/Knowledge_management#:~:text=Knowledge%20management%20(KM)%20is%20the,the%20best%20use%20of%20knowledge.&text=KM%20is%20an%20enabler%20of%20organizational%20learning.) revolution. People have used it to write academic papers and novels. People also use it to support their own work: everyone from software developers to lawyers are seeing the value in the idea of _linked thought_.

If you are unfamiliar with markdown it can be tricky to get started with obsidian. This article is meant to be a quick reference guide on the basics of Obsidian and the Markdown specific to obsidian. It is aimed at beginners and people who are unfamiliar with markdown.

Most Obsidian Tutorials start with how to link pages together, this doesn’t make any sense. While this is one of the big selling points of Obsidian it can be a confusing topic for someone that is just starting out. My approach will be to explain obsidian as a text editing tool, and then we’ll add “linked thought” at a later stage as the icing on the cake. You can use the contents menu to jump to a section you want to read more about.

Here is a walkthrough of [my Obsidian.md personal knowledge management system](https://rossgriffin.com/tru/).

## Basic Text Formatting in Obsidian

Like Microsoft Word or Apple pages Obsidian allows you to perform some basic text editing like making text: Bold, Italic, Strike Through and highlighted.

### How to make text Bold in Obsidian?

**This is some bold text:**

```
**This is some bold text**
```

### How to make text italicized in Obsidian?

_This is italicized text:_

```
*This is italicized text*
```

### How to make give text a strikethrough in Obsidian?

~~This text has a strikethrough:~~

```
~~This text has a strike through~~
```

### How to highlight text in Obsidian?

This is highlighted

```
==This is highlighted==
```

### How to insert block quotes in Obsidian?

Block quotes are a good way of indicating that you’re quoting someone, or to call attention to specific text:

> This is a blockquote

```
> This is a Block Quote
```

Video Explaining how to do basic text formatting in Obsidian.md

## Headings and Horizontal Rules

### How to add a Heading in Obsidian?

In Obsidian you can add up to 6 levels of headings.

```
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
```

### How to add a horizontal rule in Obsidian?

---

To add a horizontal rule in obsidian.md all you need to do is write 3 dashes like so:

```
---
```
---

Note: if you put 3 dashes directly below some text in Obsidian, it automatically becomes a **Heading 1**.

```
Some text
---
```

Video explaining how to add Headings and Horizontal Rules to Obsidian.md

### How to add an underline in Obsidian?

Obsidian.md doesn’t come with an underline feature built in. However you can install the [Obsidian Underline](https://github.com/Benature/obsidian-underline) plugin from the community plugins dialogue of your Obsidian.md application. This plugin adds the **Ctrl + U** shortcut and inserts the HTML markup (not markdown) for an underline. The result is an underline. Unfortunately it looks messy in raw markdown, but it’s currently the fastest and best way that I know of to add an underline to an Obsidian.md markdown document.

```
<ul> This is some underlined text </u>
```

## Lists and Checklists

In Obsidian you can create ordered lists, unordered lists and checklists:

### How to add ordered list to Obsidian?

1.  This is
2.  an Ordered
3.  List
    1.  You can also indent things like so.

```
1. This is
2. an Ordered
3. list
          1. You can also indent things like so.           
```

### How to add an unordered list in Obsidian?

-   This
-   Is an
-   Unordered list
    -   You can indent things like so

```
- This
- is an
- unordered list
       - you can indent things like so
```

### How to add a checklist to Obsidian?

![☑️](https://s.w.org/images/core/emoji/14.0.0/svg/2611.svg)This  
![☑️](https://s.w.org/images/core/emoji/14.0.0/svg/2611.svg)is a  
![☑️](https://s.w.org/images/core/emoji/14.0.0/svg/2611.svg)checklist

```
- [ ] This
- [ ] is a
- [ ] checklist
     - [ ] Indented check list or sub-task
```

Video explaining how to add Lists and Checklists to Obsidian.md

- [x] fds
- [ ] dfsdf


## How to add code blocks to Obsidian

Code blocks are useful for two reasons: one, the code is not compiled in your editor. Two, the code will in most cases have proper syntax highlighting.

To insert a code block use the ` (Found Under your escape key usually) followed by the programming language you want to use. For example:

````
```html
some code here
```
````

Video explaining how to add code blocks and fences to Obsidian.md

## How to add Tables to Obsidian?

Tables are a bit tricky to work with in markdown so I’d recommend downloading the plugin “[Advanced Table](https://github.com/tgrosinger/advanced-tables-obsidian)s” which makes editing tables a more pleasant experience.

Obsidian allows you to insert tables into text:

Heading

Description

Header

Title

Paragraph

Text

```
| Syntax      | Description |
| ----------- | ----------- |
| Header      | Title       |
| Paragraph   | Text        |
```

| sadasd | asdasd  | dsf sdfsd |
| ------ | ------- | --------- |
| dasd   | sdfsd f | 312312    |
|        |         | ewrwer    |
|        |         |           |

## How to add Footnotes to Obsidian?

Footnotes are great if you want to add something to your notes without breaking the flow of your writing. 

Tip: I’d highly recommend the plugin: “Footnote Shortcut” if you are going to be using footnotes on a regular basis.

The mark up would look like this:

```
Text with foot note[^1]

lorem ipsum

[^1]: Footnote
```

You can also insert footnotes directly into text like so: 

```
This is some text. Some More text
This text has a foot note ^[Foot Note Text]
```

## How to link in Obsidian?

### Linking and Backlinking

The most basic way to link in obsidian is the wiki style link. This is an in-text link to another page in your obsidian vault. You can achieve this by using square brackets like so: **[[Page Link]]**

You can also link to specific blocks by adding a “^” symbol after your page name like so: **[[Page Link^block to link to]]**. When you do this, Obsidian will bring up a context menu to assist you in choosing the correct block in your document. You can link to other pages in your obsidian vault or you can use this to link to blocks in the current document. This is helpful for creating page contents for large documents.

You can also link to specific heading by doing this **[[Page Link#The Heading]]**.

Explaining back links in text is a bit difficult so I have made a video below to demonstrate how this works.

### How to add an Alias in Obsidian?

Aliases allow you to refer to the same page by different names. For example you can have a page called “**Productivity MOC**” but if you used this in a sentence it could look funny. So instead you can give the page an alias by doing the following:

```
This is a sentence about [[Productivity MOC | Productivity]]
```

The sentence above will display like this: This is a sentence about **Productivity**.

Video explaining how to use Linking and Aliases in Obsidian.md

### How to link to external locations in Obsidian?

You can link to websites and files on your computer by using external links. They’re different from internal links. External links look like this: 

```
[Text](https://placetolinkto.com)
```

This will output a hyperlink.

## How to embed pages in Obsidian?

Embedding pages are another thing that makes _linked thought_ software so powerful. In Software like Obsidian.md you can link to other pages or blocks. This is powerful because you can show an entire page within a page, or just a paragraph or two.

This is great because when the content is updated on the original page it is also updated everywhere it’s embedded. People have found many creative uses for this feature.

To embed a single page use this syntax: ![[Page Name]] Notice how it’s the same as linking to page except you just put the exclamation mark in front?

```
![[Page Name]]
```

![Thunar](Thunar.md)


You can embed just a paragraph by using the same syntax but, you’ll need to include the “^” symbol after the page name like so: ![[Page Name^block to link to]]

```
![[Page Name^block to link to]]
```

And here is how to link to a heading and all it’s subsequent content:

```
![[Page Name#heading to link to]]
```

### How to embed images and other file types in Obsidian?

You can embed media in your Obsidian documents. You’ll need to make sure that the media exists in the vault folder first. Many people like to create an attachments folder and keep all their media there. Once you’ve put your media in the obsidian folder you can link to it like this:

```
![[picture.jpg]]
```

Here is a list of file types you can embed in obsidian:

1.  Markdown files: `md`;
2.  Image files: `png`, `jpg`, `jpeg`, `gif`, `bmp`, `svg`;
3.  Audio files: `mp3`, `webm`, `wav`, `m4a`, `ogg`, `3gp`, `flac`;
4.  Video files: `mp4`, `webm`, `ogv`;
5.  PDF files: `pdf`.

You can also just drag an image or supported file into your note and it’ll automatically embed it and put the file in your “attachments” folder. Your attachments folder is just your vault by default but I would recommend making a separate folder for this so your vault doesn’t get too cluttered.

## How to use queries and search in Obsidian?

Queries allow you to find several notes in your vault that match a specific criteria. This is helpful if you want to create a hub for specific notes. For example, you could tag all notes derived from videos, and then query your vault so only the notes from a specific creator are shown:

````
```query
#video + Tiago Forte
```
````

In my vault this will show me all notes on videos by the creator Tiago Forte.

## How to add Meta data or YAML in Obsidian?

You can add additional data to your notes such as tags and aliases. Metadata uses a markup called YAML which stands for “Yet another markup language”.

YAML metadata is useful if you want to add tags to your notes or globally refer to notes by an alias. YAML is hidden in notes so you can add a lot of data to the YAML markup without making your notes messy.

YAML in obsidian typically looks like this:

```
---
alias: [how to use obsidian,obsidian guide]
tags: [note,video]
---
```

The dashes will go a different colour (By default, the dashes are green) if you have placed the YAML in your notes correctly.

By default obsidian supports the following YAML in this order:

1.  alias
2.  tags
3.  cssclass

You are able to add more YAML metadata but it’s not natively supported by obsidian. However, this can still be useful if you’re using plugins like _Dataview_

## Obsidian Frequently Asked Questions

Here are questions I get asked frequently.

### How do I change the font in Obsidian?

To change the font in Obsidian do the following: 

1.  Click on the settings cog (usually in the bottom left corner of your screen)
2.  Click on “Appearance”
3.  Navigate to the “Font” section. Here you can change font for the Interface Font, the text font and other fonts. 

You can also change font size.
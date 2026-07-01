# XML Structural Elements
For one "paragraph block", we're using the 'anonymous block' element. Our manuscripts don't technically have "paragraphs" and are essentially one long sentence, so we couldn't use the typical paragraph elements.

Example:
```
<ab>
<!-- Text in here will be one "anonymous block". We're using the ab tag instead of a <div> element -->
</ab>
```

If a word is missing in one edition, use a self-closing tag.

**Page Breaks and Catchwords:**

We're using this system to list the page breaks and to show differences in page breaks between each edition of our document. 
```
<pb ed="#S" n="145" >
```
**Insertions and changes**

For a word crossed or blacked out:
```<del rend="strikethrough">```

For a word added between the lines:
```<add place="above"`>```


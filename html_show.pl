#!/usr/bin/perl

# Converts "HTML" code into a text version that the browser will not recognize as HTML and therefore not execute as HTML.
# Shows the code as raw HTML for the user to view the HTML
# < - &lt;
# > - &gt;

$string = qq{
I'm a student in school, & enjoy programming as a hobby. I have a strong belief in open source software which is why I have a couple of my projects posted on this site.NEWLINEHERE
NEWLINEHERE
Programming in:NEWLINEHERE
- PythonNEWLINEHERE
- PHPNEWLINEHERE
- Perl & [CGI]NEWLINEHERE
- Java (in process of learning :D )NEWLINEHERE
- JavaScript/HTML/CSS (not really considered languages...)NEWLINEHERE
};

# no html
$string =~ s/</\&lt\;/g;
$string =~ s/>/\&gt\;/g;

$stuff = "<br>\n\n";
$string =~ s/NEWLINEHERE/$stuff/g;

$string =~ s/\t/\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;\&nbsp\;/g;
$string =~ s/\s/\&nbsp\;/g;

#syntax highlighting adders
$string =~ s/\[B\]/<font color='blue'>/g;
$string =~ s/\[R\]/<font color='red'>/g;
$string =~ s/\[L\]/<font color='white'>/g;
$string =~ s/\[P\]/<font color='purple'>/g;
$string =~ s/\[CF\]/<\/font>/g;

print "\n\nBrowser Viewable Code:\n".$string."\n\n";
zip -9 -T "./wikitext.txt.zip" "./wikitext.txt"
pandoc --from=mediawiki ./wikitext.txt --standalone --smart --to=html -o html.html
zip -9 -T "./html.html.zip" "./html.html"
pandoc --from=mediawiki ./wikitext.txt --standalone --smart --to=html5 -o html5.html
zip -9 -T "./html5.html.zip" "./html5.html"
pandoc --from=mediawiki ./wikitext.txt --standalone --smart --to=plain -o plain.txt
zip -9 -T "./plain.txt.zip" "./plain.txt"
pandoc --from=mediawiki ./wikitext.txt --standalone --smart --to=markdown -o md.md
zip -9 -T "./md.md.zip" "./md.md"

diff -u plain.txt md.md > plain2md.patch
diff -u md.md wikitext.txt > md2wiki.patch
diff -u wikitext.txt html.html > wiki2html.patch
diff -u html.html html5.html > html2html5.patch

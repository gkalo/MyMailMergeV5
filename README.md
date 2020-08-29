# MyMailMergeV5
Description:
Python module to create Documents using mail-merge template and data in various formats and, optionally, send them by email.

Installation:
All you need is a working Python installation plus the Packages described in "pip list.txt". If you feel you will not be needing Oracle or / and MySQL packages just follow instructions in MyMailMergeV5.py and remove or comment out not needed lines.

Usage:
Copy contents of project into a new directory. Open a command line prompt and enter
MyMailMergeV5.py -h
you will see the usage instructions. Plenty of examples in the examples folder.

Quick run:
MyMailMergeV5.py -c examples\MyMailMergeV5_List.yml
it will use the MyMailMergeV5.docx template and create “examples\MyMailMergeV5_List_Out1.docx” and a log in “MyMailMergeV5_List.log” showing steps taken.
Start experimenting from there.

Credits:
Everything used in the module is a product of personal reading, research and trial and error. I used many suggestions and solutions found in the Internet. I think all of them are free to use.
Please send me an email if I used something I should not have.
Special credits to Krystian Rosiński. For some reason I could not send email with Greek (utf-8) characters. His article got me started.
http://code.activestate.com/recipes/578150-sending-non-ascii-emails-from-python-3/

License:
MIT License, as described in "LICENSE.txt". You can do just about anything with the sources, just drop me an email if you fill like it.

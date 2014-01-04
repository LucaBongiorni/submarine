submarine
=========

Small, simple, and fast subdomain enumeration in Ruby.

Example usage:
<pre><code>
dustyfresh@spacecaddy:~$ git clone https://github.com/dustyfresh/submarine.git
Cloning into 'submarine'...
remote: Counting objects: 23, done.
remote: Compressing objects: 100% (20/20), done.
remote: Total 23 (delta 6), reused 15 (delta 3)
Unpacking objects: 100% (23/23), done.

dustyfresh@spacecaddy:~$ ./submarine/submarine.rb google.com
One moment while we enumerate subdomains for google.com...

academico.google.com : 173.194.115.80
accounts.google.com : 74.125.198.84
admin.google.com : 173.194.115.66
ads.google.com : 173.194.115.72
alerts.google.com : 173.194.115.68
ap.google.com : 173.194.115.83
apps.google.com : 173.194.115.72
asia.google.com : 74.125.198.105
blog.google.com : 74.125.198.191
...
...
</code></pre>

NOTICE:
Keep in mind, the shorter the list the faster your scan will be. The list I have provided
was forked from two existing lists, so it's rather large. It does however cover a very
vast range of possible subdomains.

# SYNOPSIS

[Swat](https://github.com/melezhik/swat) tests for metacpan.org

Checks accessibility of metacpan.org. 

# Install

    $ sudo yum install curl

    $ carton install

# Run tests

    carton exec swat 

# Report example

![Report example](https://raw.githubusercontent.com/metacpan/metacpan-monitoring/master/report.png)

# Suite.ini

    [metacpan]

    # define critical age in hours for a latest release appeared at https://metacpan.org/feed/recent?f= 
    # if latest release's age more then latest_rs_age_ hours 
    # this is considered as feed freeze failure. Default value is 4
        
    latest_rs_age = 4

    # define maximum number of CPAN authors ( downloaded from sitemap-authors.xml.gz ) checked 

    max_authors = 10

# COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

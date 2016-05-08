# SYNOPSIS

[Swat](https://github.com/melezhik/swat) tests for metacpan.org

This is simple test suit could be used in monitoring/deployment.

# Checks perfomed

- check if landing page is accessible
- check if modules search is working properly
- check if latest releases page/feed is accessible and returns not empty results 
- check if latest release at https://metacpan.org/feed/recent?f= is not older than 4 hours ago

# Install

    yum install curl

    carton install

# Run tests

    carton exec swat 

# Suite.ini

    [metacpan]

    # define critical age in hours for a latest release appeared at https://metacpan.org/feed/recent?f= 
    # if latest release's age more then latest_rs_age_ hours 
    # this is considered as feed freeze failure. Default value is 4
        
    latest_rs_age = 4


# COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

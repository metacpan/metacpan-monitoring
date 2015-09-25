package swat::metacpan::web; 
our $VERSION = '0.1.3'; 
1;

__END__


=head1 SYNOPSIS

L<Swat|https://github.com/melezhik/swat> tests for metacpan.org

This is simple test suit could be used in monitoring/deployment.


=head1 Checks perfomed

    - check if landing page is accessible
    - check if modules search is working properly
    - check if latest releases page/feed is accessible and returns not empty results 
    - check if latest release at https://metacpan.org/feed/recent?f= is not older than 4 hours ago


=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::metacpan::web

=head1 USAGE


    swat swat::metacpan::web https://metacpan.org


=head1 Settings

=over

=item *

C<latest_rs_age> - define critical age in hours for a latest release appeared at https://metacpan.org/feed/recent?f= , if latest release's age more then
I<latest_rs_age> hours this is considered as I<feed freeze failure>. Default value is I<4>.

    # check that releases come to metacpan every 1 hour
    echo latest_rs_age=1 >> swat.my


=back

=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


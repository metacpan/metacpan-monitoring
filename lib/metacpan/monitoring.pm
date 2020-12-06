package metacpan::monitoring;
1;

package main;

use DateTime;
use Time::Piece;
use strict;

sub validate_latest_release {
    my $latest_date = shift;
    my $tp = Time::Piece->strptime($latest_date,'%Y-%m-%dT%TZ');
    my $dt = DateTime->new(
        year => $tp->year,
        month => $tp->mon,
        day => $tp->mday,
        minute => $tp->min,
        hour => $tp->hour,
        second => $tp->second,
    );
    my $threshold_date = DateTime->now->subtract( hours =>  latest_rs_age() );
    my $latest_rs_age = latest_rs_age();
    my ($valid, $alive) = (DateTime->compare($dt, $threshold_date) == 1) ? (1, '') : (0, 'not ');
    return [ "validator: [$valid, qq{feed is ${alive}alive. latest release date is: $latest_date. threshold date is: $threshold_date. threshold value is: $latest_rs_age hours.}]" ];
}

sub latest_rs_age {
    config()->{metacpan}->{latest_rs_age}
}

1;

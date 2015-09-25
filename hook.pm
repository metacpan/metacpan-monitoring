use DateTime;                                   
use Time::Piece;                                
use Data::Dumper;
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
        second => $tp->second                        
    );                                          

    my $threshold_date = DateTime->now->subtract( hours =>  latest_rs_age() ); 
    my $latest_rs_age = latest_rs_age();

    if (DateTime->compare($dt, $threshold_date) == 1){
        ok(1,"feed is alive. latest release date is: $latest_date. thershold date is: $threshold_date. threshold value is: $latest_rs_age hours.");
    }else{
        ok(0,"feed is not alive. latest release date is: $latest_date. thershold date is: $threshold_date. threshold value is: $latest_rs_age hours.");
    }


}

sub latest_rs_age {
    $ENV{'latest_rs_age'} || 4
}

1;


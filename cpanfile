
on 'test' => sub {
    requires 'Test::More'                                             => '>= 0';
};


on 'configure' => sub {
    requires 'File::ShareDir'                                         => '>= 1.102';
};


requires 'DateTime'                                                   => '>= 1.20';
requires 'swat'                                                       => '>= 0.1.53';
requires 'Time::Piece'                                                => '>= 1.30';
requires 'swat::metacpan::web'                                        => '>= 0.1.3';

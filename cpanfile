
on 'test' => sub {
    requires 'Test::More'                                             => '>= 0';
};


on 'configure' => sub {
    requires 'File::ShareDir'                                         => '>= 1.102';
};


requires 'DateTime'                                                   => '>= 1.20';
requires 'swat'                                                       => '>= 0.1.54';
requires 'Time::Piece'                                                => '>= 1.30';

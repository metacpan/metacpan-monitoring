use inc::Module::Install;

# Define metadata
name           'swat-metacpan-web';
all_from       'lib/swat/metacpan/web.pm';
abstract       'swat tests for metacpan.org';

# Specific dependencies
configure_requires 'File::ShareDir';
requires       'swat'         => '0.1.53';
requires       'DateTime';
requires       'Time::Piece'  => '1.30';
     
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::metacpan::web', 'share';    

license 'perl';

WriteAll;



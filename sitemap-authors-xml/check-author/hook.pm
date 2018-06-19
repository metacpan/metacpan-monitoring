my $url = module_variable('url');
$url=~s/.*?author/author/;
modify_resource( sub { "/$url" } );


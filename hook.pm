use metacpan::monitoring;

run_swat_module( GET => '/recent' );
run_swat_module( GET => '/search' );
run_swat_module( META => '/feed-alive' );
run_swat_module( META => 'sitemap-authors-xml/check' );

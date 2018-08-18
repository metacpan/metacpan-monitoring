run_swat_module( GET => "sitemap-authors.xml.gz" );

my $j=0;
my $max_authors = config()->{metacpan}->{max_authors};

for my $i (our @site_map_url){
  last if $j++> $max_authors;
  run_swat_module( GET => "sitemap-authors-xml/check-author" , { url => $i });
}


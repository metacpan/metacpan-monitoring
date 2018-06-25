run_swat_module( GET => "sitemap-authors.xml.gz" );

my $j=0;
for my $i (our @site_map_url){
  #last if $j++>3;
  run_swat_module( GET => "sitemap-authors-xml/check-author" , { url => $i });
}


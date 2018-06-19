run_swat_module( GET => "sitemap-authors.xml.gz" );


for my $i (our @site_map_url){
  set_response("$i ...");
  run_swat_module( GET => "sitemap-authors-xml/check-author" , { url => $i });
}

set_response("FINISHED");

use XML::LibXML;
use IO::Zlib;

set_response_processor( 

 sub {
    
   my $headers   = shift; # original response, http headers, String   
   my $body      = shift; # original response, body, String

   open(my $out, '>:raw',  test_root_dir()."/file.gz") or die "Unable to open: $!";
   print $out $body;
   close($out);

   my $fh = new IO::Zlib;
   my $xml="";

   if ($fh->open(test_root_dir()."/file.gz", "rb")) {
      $xml = join "", <$fh>;
      $fh->close;
   }

   eval {
    XML::LibXML->load_xml( string => $xml );
   };
   if ($@){
     return "Headers: $headers\nwrong XML: $@"
   } else {

    our @site_map_url;
    #my $i=0;
    while ($xml =~ /\<loc\>(.+?)\<\/loc\>/gxo) {
      push @site_map_url,$1;
      #last if $i++>10;
    }
    
     return "Headers: $headers\ncorrect XML\n$xml"
   }
});


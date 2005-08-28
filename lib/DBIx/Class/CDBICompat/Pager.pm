package DBIx::Class::CDBICompat::Pager;

use strict;
use warnings FATAL => 'all';

*pager = \&page;

sub page {
  my $class = shift;

  my $it = $class->search(@_);
  my $pager = $class->_page_object;
  return ( $pager, $it );
}

1;

# © Copyright 2011-2012 Tiago Quintino
#
# This software is licensed under the terms of the Apache Licence Version 2.0
# which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.

package libxslt;

use strict;
use warnings;

use Recipe;

my %fields = (
    name     => "libxslt",
    version  => "1.1.26",
		url      => "ftp://xmlsoft.org/libxslt/libxslt-1.1.26.tar.gz",
		md5      => "e61d0364a30146aaa3001296f853b2b9",
);

our @ISA = ("Recipe");

    sub new
		{
        my $class = shift;
        my $self  = $class->SUPER::new();
        my($element);
        foreach $element (keys %fields) {
            $self->{_permitted}->{$element} = $fields{$element};
        }
        @{$self}{keys %fields} = values %fields;
        return $self;
    }

1;
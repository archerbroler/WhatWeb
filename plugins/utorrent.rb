##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##

Plugin.define "uTorrent" do
author "Andrew Horton"
version "0.1"
description "The uTorrent GUI is a web interface to the uTorrent BitTorrent client. Homepage: https://web.utorrent.com/"
examples %w| |

extra_urls ["/gui/" ]

def passive
	m=[]
	m<< {:name=>"Page body is 'invalid request'" } if @body == "invalid request"
	m<< {:name=>'Basic realm="uTorrent"' } if @meta['www-authenticate'] == 'Basic realm="uTorrent"'

	m
end

end


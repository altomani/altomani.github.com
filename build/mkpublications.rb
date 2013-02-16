#!/usr/bin/env ruby

require 'rubygems'
require 'bibtex'

out = File.open("../publications.md", 'w')
out.puts "---\nlayout: publications\ntitle: 'Publications'\npubl: 'active'\npubl_list: " + MultiJson.dump(BibTeX.open(ARGV[0]).to_citeproc) + "\n---\n\nsome text\n"

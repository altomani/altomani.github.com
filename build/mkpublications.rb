#!/usr/bin/env ruby

require 'rubygems'
require 'bibtex'
require 'psych'

out = File.open("../publications.md", 'w')
bib = Psych.load(MultiJson.dump(BibTeX.open(ARGV[0]).to_citeproc))
o = Hash["layout" => 'publications',"title" => 'Publications', "publ" => 'active', "publ_list" => bib ]
puts o.to_yaml + "---\n\nNo text here"
out.puts o.to_yaml + "---\n\nNo text here"
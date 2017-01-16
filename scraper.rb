#!/bin/env ruby
# encoding: utf-8
# frozen_string_literal: true

require 'wikidata/fetcher'

members = WikiData::Category.new('Category:Members of the House of Assembly of Bermuda', 'en').member_titles
premiers = WikiData::Category.new('Category:Premiers of Bermuda', 'en').member_titles
speakers = WikiData::Category.new('Category:Speakers of the House of Assembly of Bermuda', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: members | premiers | speakers })

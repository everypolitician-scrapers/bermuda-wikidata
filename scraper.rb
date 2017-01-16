#!/bin/env ruby
# encoding: utf-8
# frozen_string_literal: true

require 'wikidata/fetcher'

names = WikiData::Category.new('Category:Members of the House of Assembly of Bermuda', 'en').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })

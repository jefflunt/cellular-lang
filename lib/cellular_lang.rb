require 'treetop'
require 'parser'
require 'cellular_lang/rule_classes'

base_path = File.expand_path(File.dirname(__FILE__))
Treetop.load(File.join(base_path, 'cellular_lang.treetop'))

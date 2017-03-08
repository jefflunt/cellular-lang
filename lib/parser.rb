class Parser
  def self.parse(cellular_text)
    parser = CellularLangParser.new

		tree = parser.parse(cellular_text)
		tree ? [tree, nil] : [nil, parser.failure_reason]
	end
end

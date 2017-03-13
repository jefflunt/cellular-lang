require 'treetop'

module CellularLang
  class Program < Treetop::Runtime::SyntaxNode
  end

  class Subroutine < Treetop::Runtime::SyntaxNode
  end

  class Command < Treetop::Runtime::SyntaxNode
  end

  class JumpPointName < Treetop::Runtime::SyntaxNode
  end

  class Comment < Treetop::Runtime::SyntaxNode
  end

  class Whitespace < Treetop::Runtime::SyntaxNode
  end
end

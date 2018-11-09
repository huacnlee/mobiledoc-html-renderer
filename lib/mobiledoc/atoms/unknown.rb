# frozen_string_literal: true

require "mobiledoc/error"

module Mobiledoc
  module UnknownAtom
    module_function

    def type
      "html"
    end

    def render(env, value, payload, options)
      name = env[:name]

      raise Mobiledoc::Error.new(%Q[Atom "#{name}" not found])
    end
  end
end

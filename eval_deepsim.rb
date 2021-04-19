require 'rdl'
RDL::Config.instance.number_mode = true
require 'types/core'
require_relative './lib/mini_magick'
require './orig_types'

RDL::Heuristic.get_rank_accs(:arg)
RDL::Heuristic.get_rank_accs(:ret)

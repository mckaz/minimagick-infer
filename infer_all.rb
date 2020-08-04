require_relative './lib/mini_magick'
#require '../type-infer/rdl/lib/rdl'
require 'rdl'
RDL::Config.instance.number_mode = true
require 'types/core'

RDL.no_infer_meth MiniMagick::Configuration, :cli ## mixin
RDL.no_infer_meth MiniMagick::Configuration, :cli_path ## mixin
RDL.infer_file "./lib/mini_magick/configuration.rb"

RDL.no_infer_meth MiniMagick::Image, 'self.open' ## unsupported regex expression kind
RDL.no_infer_meth MiniMagick::Image, 'self.attribute' # unsupported use of define_method
RDL.infer_file "./lib/mini_magick/image.rb"

RDL.no_infer_meth MiniMagick::Shell, :execute_open3 ## calling `require` inside method
RDL.no_infer_meth MiniMagick::Shell, :execute_posix_spawn ## calling `require` inside method
RDL.infer_file "./lib/mini_magick/shell.rb"

RDL.no_infer_meth MiniMagick::Tool, 'self.new' ## use of `super` in abstract class
RDL.infer_file "./lib/mini_magick/tool.rb"

RDL.no_infer_meth MiniMagick::Utilities, :tempfile ## use of keyrest param
RDL.infer_file "./lib/mini_magick/utilities.rb"

RDL.infer_file "./lib/mini_magick/version.rb"

RDL.no_infer_meth MiniMagick::Image::Info, :details
RDL.infer_file "./lib/mini_magick/image/info.rb"

RDL.infer_all "./lib/mini_magick/tool/"
#RDL.infer_file "./lib/mini_magick/tool/animate.rb"
#RDL.infer_file "./lib/mini_magick/tool/compare.rb"


RDL.do_infer :files, num_times: 11

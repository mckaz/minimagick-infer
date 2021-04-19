# typed: strong
class [s]MiniMagick
  # RDL Type: () -> XXX
  sig { returns(T.untyped) }
  def version; end

  class Configuration
    # RDL Type: (([ logger=: (XXX) -> XXX ] and [ shell_api=: (String) -> XXX ] and [ validate_on_create=: ((false or true)) -> XXX ] and [ validate_on_write=: ((false or true)) -> XXX ] and [ whiny=: ((false or true)) -> XXX ])) -> XXX
    sig { params(base: T.untyped).returns(T.untyped) }
    def extended(base); end
  end

  class Image
    # RDL Type: ((IO or String), ?String) -> MiniMagick::Tool
    sig { params(stream: T.any(IO, String), ext: String).returns(MiniMagick::Tool) }
    def read(stream, ext = nil); end

    # RDL Type: (XXX, String, String, String, String, ?String) -> XXX
    sig do
      params(
        blob: T.untyped,
        columns: String,
        rows: String,
        depth: String,
        map: String,
        format: String
      ).returns(T.untyped)
    end
    def import_pixels(blob, columns, rows, depth, map, format = nil); end

    # RDL Type: (?String, ?XXX) {XXX} -> XXX
    sig { params(ext: String, validate: T.untyped).returns(T.untyped) }
    def create(ext = nil, validate = nil); end
  end

  class Tool
    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def option_methods; end
  end
end

module MiniMagick
  module Configuration
    # RDL Type: () {(MiniMagick::Configuration) -> XXX} -> XXX
    sig { returns(T.untyped) }
    def configure; end

    # RDL Type: () -> String
    sig { returns(String) }
    def processor; end

    # RDL Type: ([ to_s: () -> String ]) -> String
    sig { params(processor: T.untyped).returns(String) }
    def processor=(processor); end

    # RDL Type: (String) -> String
    sig { params(value: String).returns(String) }
    def cli=(value); end

    # RDL Type: (XXX) -> XXX
    sig { params(value: T.untyped).returns(T.untyped) }
    def debug=(value); end

    # RDL Type: () -> MiniMagick::Tool
    sig { returns(MiniMagick::Tool) }
    def reload_tools; end
  end

  class Image
    # RDL Type: (String, ?([ path: () -> XXX ] and [ unlink: () -> XXX ])) {XXX} -> self
    sig { params(input_path: String, tempfile: T.untyped).returns(T.self_type) }
    def initialize(input_path, tempfile = nil); end

    # RDL Type: ([ signature: () -> XXX ]) -> (false or true)
    sig { params(other: T.untyped).returns(T.any(FalseClass, TrueClass)) }
    def ==(other); end

    # RDL Type: () -> Array<String>
    sig { returns(T::Array[String]) }
    def hash; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_blob; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def valid?; end

    # RDL Type: () -> String
    sig { returns(String) }
    def validate!; end

    # RDL Type: ([ to_s: () -> String ]) -> XXX
    sig { params(value: T.untyped).returns(T.untyped) }
    def [](value); end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def layers; end

    # RDL Type: () -> Array<String>
    sig { returns(T::Array[String]) }
    def get_pixels; end

    # RDL Type: (String, ?XXX, ?[ each: () {(XXX, XXX) -> XXX} -> XXX ]) {(([ <<: ((String or XXX)) -> XXX ] and [ send: (String, XXX) -> XXX ])) -> XXX} -> MiniMagick::Image
    sig { params(format: String, page: T.untyped, read_opts: T.untyped).returns(MiniMagick::Image) }
    def format(format, page = nil, read_opts = nil); end

    # RDL Type: () {XXX} -> MiniMagick::Image
    sig { returns(MiniMagick::Image) }
    def combine_options; end

    # RDL Type: (String, *XXX) -> MiniMagick::Image
    sig { params(name: String, args: T.untyped).returns(MiniMagick::Image) }
    def method_missing(name, *args); end

    # RDL Type: (String, ?XXX) -> MiniMagick::Tool
    sig { params(method_name: String, include_private: T.untyped).returns(MiniMagick::Tool) }
    def respond_to_missing?(method_name, include_private = nil); end

    # RDL Type: ((IO or String)) -> Number
    sig { params(output_to: T.any(IO, String)).returns(Integer) }
    def write(output_to); end

    # RDL Type: ([ path: () -> XXX ], ?String, ?[ path: () -> XXX ]) {([ <<: (XXX) -> XXX ]) -> XXX} -> MiniMagick::Image
    sig { params(other_image: T.untyped, output_extension: String, mask: T.untyped).returns(MiniMagick::Image) }
    def composite(other_image, output_extension = nil, mask = nil); end

    # RDL Type: (?XXX) -> MiniMagick::Image
    sig { params(frame: T.untyped).returns(MiniMagick::Image) }
    def collapse!(frame = nil); end

    # RDL Type: () -> nil
    sig { void }
    def destroy!; end

    # RDL Type: () {([ <<: (XXX) -> XXX ]) -> XXX} -> XXX
    sig { returns(T.untyped) }
    def identify; end

    # RDL Type: (String, *XXX) -> XXX
    sig { params(tool_name: String, args: T.untyped).returns(T.untyped) }
    def run_command(tool_name, *args); end

    # RDL Type: (?XXX) {(([ <<: ((String or XXX)) -> XXX ] and [ quality: (Number) -> XXX ] and [ send: (XXX, *XXX) -> XXX ])) -> XXX} -> MiniMagick::Image
    sig { params(page: T.untyped).returns(MiniMagick::Image) }
    def mogrify(page = nil); end

    # RDL Type: () -> String
    sig { returns(String) }
    def layer?; end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def landscape?; end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def portrait?; end

    class Info
      # RDL Type: (String) -> self
      sig { params(path: String).returns(T.self_type) }
      def initialize(path); end

      # RDL Type: (String, *XXX) -> XXX
      sig { params(value: String, args: T.untyped).returns(T.untyped) }
      def [](value, *args); end

      # RDL Type: () -> Hash<String, XXX>
      sig { returns(T::Hash[String, T.untyped]) }
      def clear; end

      # RDL Type: (String) -> XXX
      sig { params(value: String).returns(T.untyped) }
      def cheap_info(value); end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def colorspace; end

      # RDL Type: () -> String
      sig { returns(String) }
      def mime_type; end

      # RDL Type: (?XXX) -> XXX
      sig { params(unit: T.untyped).returns(T.untyped) }
      def resolution(unit = nil); end

      # RDL Type: (String) -> XXX
      sig { params(value: String).returns(T.untyped) }
      def raw_exif(value); end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def exif; end

      # RDL Type: (String) -> XXX
      sig { params(value: String).returns(T.untyped) }
      def raw(value); end

      # RDL Type: () -> String
      sig { returns(String) }
      def signature; end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def data; end

      # RDL Type: () {(([ <<: (XXX) -> XXX ] and [ format: (String) -> XXX ] and [ units: (XXX) -> XXX ])) -> XXX} -> XXX
      sig { returns(T.untyped) }
      def identify; end

      # RDL Type: ((String and [ scan: (Regexp) -> XXX ])) -> String
      sig { params(encoded_value: T.untyped).returns(String) }
      def decode_comma_separated_ascii_characters(encoded_value); end

      # RDL Type: () -> String
      sig { returns(String) }
      def path; end
    end
  end

  class Shell
    # RDL Type: (([ first: () -> XXX ] and [ join: (String) -> XXX ]), ?([ []: (:stderr) -> XXX ] and [ []: (:stdin) -> XXX ] and [ fetch: (:whiny, XXX) -> XXX ])) -> [XXX, XXX, XXX]
    sig { params(command: T.untyped, options: T.untyped).returns(T::Array[T.untyped]) }
    def run(command, options = nil); end

    # RDL Type: (([ first: () -> XXX ] and [ join: (String) -> XXX ]), ?XXX) -> [String, String, Number]
    sig { params(command: T.untyped, options: T.untyped).returns(T::Array[T.any(Integer, String)]) }
    def execute(command, options = nil); end

    # RDL Type: (String) {XXX} -> nil
    sig { params(command: String).void }
    def log(command); end
  end

  class Tool
    # RDL Type: (String, ?([ ==: ((false or true)) -> (false or true) ] and [ is_a?: (Class) -> XXX ])) -> self
    sig { params(name: String, options: T.untyped).returns(T.self_type) }
    def initialize(name, options = nil); end

    # RDL Type: (*XXX) {([ chomp: (String) -> XXX ], XXX, XXX) -> XXX} -> XXX
    sig { params(args: T.untyped).returns(T.untyped) }
    def call(*args); end

    # RDL Type: () -> [String, XXX]
    sig { returns(T::Array[T.untyped]) }
    def command; end

    # RDL Type: () -> Array<String>
    sig { returns(T::Array[String]) }
    def executable; end

    # RDL Type: ([ to_s: () -> String ]) -> MiniMagick::Tool
    sig { params(arg: T.untyped).returns(MiniMagick::Tool) }
    def <<(arg); end

    # RDL Type: ([ each: () {(XXX) -> XXX} -> XXX ]) -> MiniMagick::Tool
    sig { params(new_args: T.untyped).returns(MiniMagick::Tool) }
    def merge!(new_args); end

    # RDL Type: (*XXX) -> MiniMagick::Tool
    sig { params(values: T.untyped).returns(MiniMagick::Tool) }
    def +(*values); end

    # RDL Type: () {(MiniMagick::Tool) -> XXX} -> MiniMagick::Tool
    sig { returns(MiniMagick::Tool) }
    def stack; end

    # RDL Type: () -> MiniMagick::Tool
    sig { returns(MiniMagick::Tool) }
    def stdin; end

    # RDL Type: () -> MiniMagick::Tool
    sig { returns(MiniMagick::Tool) }
    def stdout; end

    # RDL Type: (*XXX) -> MiniMagick::Tool
    sig { params(args: T.untyped).returns(MiniMagick::Tool) }
    def clone(*args); end

    # RDL Type: (String, *XXX) -> MiniMagick::Tool
    sig { params(name: String, args: T.untyped).returns(MiniMagick::Tool) }
    def method_missing(name, *args); end

    class Compare
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Mogrify
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class MogrifyRestricted
      # RDL Type: (*XXX) -> XXX
      sig { params(args: T.untyped).returns(T.untyped) }
      def format(*args); end
    end

    class Identify
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Montage
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Composite
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Magick
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Display
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Stream
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Convert
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Conjure
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Import
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end

    class Animate
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end
    end
  end

  module Utilities
    # RDL Type: (String) -> String
    sig { params(cmd: String).returns(String) }
    def which(cmd); end
  end
end
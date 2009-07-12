module Cheat
  class Commands
    def initialize(args)
      @sheet = args.shift unless args.first =~ /^--/
      parse_args(args)
    end

  private
    def parse_args(args)
      args.each_with_index do |arg, i|
        if arg =~ /^--(.+)$/ && respond_to?(meth = $1)
          if method(meth).arity.zero? || args[i+1] =~ /^--/
            send(meth)
          else
            send(meth, args[i+1])
          end
        end
      end
    end

  public
    def help
      puts self.class.public_instance_methods(false)
    end

    def diff
    end

    def add
    end

    def new
    end

    def clear_cache
    end

    def edit
    end
  end
end

require 'rake' rescue nil

if defined?(Rake)
  PryRake::Commands.block_command 'rake', 'Run a rake task' do |*args|
    def rake
      Rake.application
    end

    def initialize_rake
      rake.init
      rake.send(:select_tasks_to_show, rake.options, :tasks, nil)
      rake.load_rakefile
      rake.handle_options
    end

    def display_tasks(patterns)
      pattern = patterns.shift
      rake.options.show_task_pattern = Regexp.new(pattern || '')
      rake.display_tasks_and_comments
    end

    def invoke_task(command)
      rake.invoke_task(command)
    end

    initialize_rake

    if args.empty?
      output.puts('Usage rake [command] [args]')
    elsif args[0] == '-T'
      display_tasks(args.drop(1))
    else
      invoke_task(args.join(' '))
    end
  end
end

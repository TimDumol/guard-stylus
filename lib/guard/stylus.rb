require 'guard'
require 'guard/guard'
require 'guard/watcher'
require 'guard/helpers/starter'
require 'guard/helpers/formatter'
require 'stylus'

module Guard
  class Stylus < Guard
    include ::Guard::Helpers::Starter
    def target_filename(directory, file)
      File.join(directory, File.basename(file).sub(/(\.css)?\.styl$/, '.css'))
    end

    def act_on(directory, file)
      target = target_filename(directory, file)
      FileUtils.mkdir_p(File.dirname(target))

      compiled = ::Stylus.compile(File.new(file), :compress => options[:compress])
      File.open(target, 'w') do |f|
        f.write(compiled)
      end
      mtime = File.mtime(file)
      File.utime(mtime, mtime, file)
      file
    end
  end
end


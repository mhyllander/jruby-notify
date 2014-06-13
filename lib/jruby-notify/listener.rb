module JRubyNotify
  class Listener
    include Java::NetContentobjectsJnotify::JNotifyListener

    def initialize(callback)
      @callback = callback
    end

    def file_renamed(watch, path, file, newfile)
      clean_call(:renamed, path, file, newfile)
    end

    def file_modified(watch, path, file)
      clean_call(:modified, path, file)
    end

    def file_deleted(watch, path, file)
      clean_call(:deleted, path, file)
    end

    def file_created(watch, path, file)
      clean_call(:created, path, file)
    end

    private

    #
    # Ensure that all paths have File::SEPARATOR as separator
    # This avoid a mix of different separators within the paths
    #
    def clean_call(change, *paths)
      paths = paths.map { |p| p.tr(File::ALT_SEPARATOR, File::SEPARATOR) } if File::ALT_SEPARATOR
      @callback.call [change].concat(paths)
    end

  end
end

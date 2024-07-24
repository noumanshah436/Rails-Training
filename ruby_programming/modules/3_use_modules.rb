require_relative "2_my_module.rb"   # require_relative is used to input a file name relative to the current file
                                    #  it will also execute the file first

# include Tools

# Tools.sayHi("Nouman")


#   load vs require
# https://prograils.com/ruby-methods-differences-load-require-include-extend


# In Ruby, both `load` and `require` are used to include code from other files, but they serve slightly different purposes and have different behaviors. Here’s a breakdown of their differences:

# ### `require`

# - **Purpose**: Used to load a Ruby file or library.
# - **Behavior**: It loads the specified file only once per Ruby process. If the file has already been loaded, `require` will not load it again.
# - **File Extension**: It assumes the file extension `.rb` if not specified.
# - **Typical Use Case**: Commonly used for loading libraries and gems. For example, `require 'json'` will load the JSON library.

# **Example**:
# ```ruby
# require 'date'
# ```

# ### `load`

# - **Purpose**: Used to load a Ruby file every time `load` is called.
# - **Behavior**: It reloads the specified file each time `load` is executed, even if it has been previously loaded.
# - **File Extension**: You need to specify the file extension (e.g., `.rb`).
# - **Typical Use Case**: Useful for loading configuration files or scripts that might change during runtime.

# **Example**:
# ```ruby
# load 'config.rb'
# ```

# ### Summary

# - **`require`** is generally used for loading libraries and gems and is more efficient for including files that you don't expect to change while the program is running.
# - **`load`** is used when you need to reload files or scripts and is often employed in scenarios where the file content might change and needs to be re-evaluated.

# Both methods help modularize code, but choosing between them depends on whether you need to load a file just once or potentially multiple times.
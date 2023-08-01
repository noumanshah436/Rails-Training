#   %i[ ] # Non-interpolated Array of symbols, separated by comma
#   %I[ ] # Interpolated Array of symbols, separated by comma

p %i[test text2]
# => [:test, :text2]
str = 'other'
p %I[test_#{str}]
# => [:test_other]

# ***********************

# There are some surprising (to me at least!) variants of Ruby's % construct.
#  There are the often used %i %q %r %s %w %x forms, each with an uppercase version to enable interpolation. (see the Ruby literals docs for explanations.

# But you can use many types of delimiters, not just []. You can use any kind of bracket () {} [] <>, and you can use (quoting from the ruby docs) "most other non-alphanumeric characters for percent string delimiters such as “%”, “|”, “^”, etc."

# So %i% bish bash bosh % works the same as %i[bish bash bosh]


x = :test

# %w won't interpolate #{...} style strings, leaving as literal
p %w[ #{x} x ]
# => ["\#{x}", "x"]

# %w will interpolate #{...} style strings, converting to string
p %W[ #{x} x ]
# => [ "test", "x"]


# %i won't interpolate #{...} style strings, leaving as literal, symbolized
p %i[ #{x} x ]
# => [:"\#{x}", :x ]

# %w will interpolate #{...} style strings, converting to symbols
p %I[ #{x} x ]
# => [ :test, :x ]


# ***********************

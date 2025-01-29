project(
  'logging',
  'cpp',
  default_options: [
    'cpp_std=c++26',
  ]
)

inc = include_directories('liblog/include')

liblog = library(
  'log',
  'liblog/log_event_list.cpp',
  'liblog/log_event_write.cpp',
  'liblog/logger_name.cpp',
  'liblog/logger_read.cpp',
  'liblog/logger_write.cpp',
  'liblog/logprint.cpp',
  'liblog/properties.cpp',
  include_directories: inc,
  install: true,
)
liblog_dep = declare_dependency(
  link_with: [liblog],
  include_directories: inc,
)

pkg = import('pkgconfig')
pkg.generate(liblog)

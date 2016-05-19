add_library(rpi_gpio_ext rpi_gpio_ext.cc)

if (NOT DART_SDK)
    message(FATAL_ERROR "Please specify the path to the Dart SDK by adding -DDART_SDK=path/to/sdk")
endif()

include_directories("${DART_SDK}/include")

require "uri/generic"

module URI
  class SOCKS < Generic
    DEFAULT_PORT = 1080
    COMPONENT = [:scheme, :userinfo, :host, :port, :query].freeze
  end
  register_scheme "SOCKS", SOCKS
  register_scheme "SOCKS5", SOCKS

  class SOCKS4 < SOCKS
  end
  register_scheme "SOCKS4", SOCKS4

  class SOCKS4A < SOCKS
  end
  register_scheme "SOCKS4A", SOCKS4A
end

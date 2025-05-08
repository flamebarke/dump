#!/usr/bin/env ruby
require 'socket'
require 'timeout'
require 'ipaddr'

def scan_port(ip, port, timeout = 2)
  begin
    Timeout::timeout(timeout) do
      socket = TCPSocket.new(ip, port)
      socket.close
      return true
    end
  rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH, Timeout::Error, SocketError
    return false
  end
end

def generate_ips_from_cidr(cidr)
  begin
    ip_range = IPAddr.new(cidr).to_range
    return ip_range.to_a.map(&:to_s)
  rescue ArgumentError => e
    puts "Invalid CIDR notation: #{e.message}"
    exit 1
  end
end

def port_scanner(targets, port_range, timeout = 2)
  results = {}
  
  targets.each do |target|
    puts "Starting port scan on #{target}..."
    open_ports = []
    
    port_range.each do |port|
      print "Scanning #{target}:#{port}...\r"
      if scan_port(target, port, timeout)
        puts "Host #{target}: Port #{port} is open!        "
        open_ports << port
      end
    end
    
    results[target] = open_ports unless open_ports.empty?
  end
  
  puts "\nScan completed!"
  if results.empty?
    puts "No open ports found on any host."
  else
    puts "Results summary:"
    results.each do |ip, ports|
      puts "#{ip}: Open ports: #{ports.join(', ')}"
    end
  end
end

# Parse command line arguments
if ARGV.length < 1
  puts "Usage: #{$0} <target_cidr> [start_port] [end_port]"
  puts "Example: #{$0} 192.168.1.0/24 80 443"
  exit
end

target_cidr = ARGV[0]
start_port = ARGV[1] ? ARGV[1].to_i : 1
end_port = ARGV[2] ? ARGV[2].to_i : 1000
port_range = (start_port..end_port)

# Generate IP list from CIDR
ip_list = generate_ips_from_cidr(target_cidr)
puts "Scanning #{ip_list.count} hosts in range #{target_cidr}"

port_scanner(ip_list, port_range)

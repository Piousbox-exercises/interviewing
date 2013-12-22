#!/home/piousbox/.rbenv/shims/ruby

require 'test/unit'

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

# puts fibonacci( 1 )

class FibTester < Test::Unit::TestCase

  def test_fib
    assert_equal( 1, fibonacci(1) )
    assert_equal( 1, fibonacci(2) )
    assert_equal( 2, fibonacci(3) )
    assert_equal( 3, fibonacci(4) )
    assert_equal( 5, fibonacci(5) )
    assert_equal( 8, fibonacci(6) )
    assert_equal( 13, fibonacci(7) )
  end

end

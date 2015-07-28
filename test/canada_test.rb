require 'minitest_helper'
require 'canada'

class CanadaTest < MiniTest::Test
  def test_eh?
    assert [].empty_eh?
    refute [1,2,3].empty_eh?
  end

  def test_respond_to_eh?
    yes = [:empty?, :empty_eh?, :respond_to?, :respond_to_eh?]
    no = [:not_there, :not_there?, :not_there_eh, :not_there_eh?]

    yes.each { |y| assert([].respond_to_eh?(y), "Array should respond_to_eh? #{y}") }
    no.each { |n| refute([].respond_to_eh?(n), "Array should not respond_to_eh? #{n}") }
  end

  def test_respond_to?
    yes = [:empty?, :empty_eh?, :respond_to?, :respond_to_eh?]
    no = [:not_there, :not_there?, :not_there_eh, :not_there_eh?]

    yes.each { |y| assert([].respond_to?(y), "Array should respond_to_eh? #{y}") }
    no.each { |n| refute([].respond_to?(n), "Array should not respond_to_eh? #{n}") }
  end

  def test_aboot
    cases = [
      [],
      [1,2,3],
      {},
      {a: 1, b: 2},
      Object.new,
      true,
      false,
      nil
    ]

    cases.each { |c| assert_equal c.inspect, aboot(c) }
  end

  def test_exceptions_to_s
    prefix = Canada::ExceptionExtensions::MSG_PREFIX.join('|')
    connector = Canada::ExceptionExtensions::MSG_CONNECTOR.join('|')
    msg = 'something went wrong...'

    assert_match /(#{prefix}), (#{connector}) #{msg}/, Exception.new(msg).to_s
    assert_match /(#{prefix}), (#{connector}) #{msg}/, Exception.new(msg).message
  end

  def test_sorry_raises
    assert_raises Exception do
      sorry Exception.new("Take off, eh")
    end
  end
end

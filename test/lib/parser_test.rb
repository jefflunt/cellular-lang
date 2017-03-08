require 'minitest/autorun'
require 'parser'

class TestParser < MiniTest::Spec
  let(:parser_output) { Parser.parse(prog) }
  let(:tree) { parser_output.first }
  let(:failure_reason) { parser_output.last }

  describe 'failed parsing' do
    let(:prog) { load_sample('garbage') }
    let(:err_msg) { "Expected 'add' at line 1, column 1 (byte 1)" }

    it { assert_nil(tree) }
    it { assert_equal(err_msg, failure_reason) }
  end

  describe '::add' do
    let(:prog) { load_sample('add') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '::move' do
    let(:prog) { load_sample('move') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

#  describe '::sense' do
#    let(:prog) { load_sample('move') }
#
#    it { refute_nil(tree) }
#    it { assert_nil(failure_reason) }
#  end
#
#  describe '::signal' do
#    let(:prog) { load_sample('move') }
#
#    it { refute_nil(tree) }
#    it { assert_nil(failure_reason) }
#  end
#
#  describe '::jump' do
#    let(:prog) { load_sample('move') }
#
#    it { refute_nil(tree) }
#    it { assert_nil(failure_reason) }
#  end
#
#  describe '::vent' do
#    let(:prog) { load_sample('move') }
#
#    it { refute_nil(tree) }
#    it { assert_nil(failure_reason) }
#  end
#
#  describe '::split' do
#    let(:prog) { load_sample('move') }
#
#    it { refute_nil(tree) }
#    it { assert_nil(failure_reason) }
#  end
#
#  describe '::copy' do
#    let(:prog) { load_sample('move') }
#
#    it { refute_nil(tree) }
#    it { assert_nil(failure_reason) }
#  end
end

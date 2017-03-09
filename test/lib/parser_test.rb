require 'minitest/autorun'
require 'parser'

class TestParser < MiniTest::Spec
  let(:parser_output) { Parser.parse(prog) }
  let(:tree) { parser_output.first }
  let(:failure_reason) { parser_output.last }

  describe 'failed parsing' do
    let(:prog) { load_sample('garbage') }
    let(:err_prefix) { 'Expected one of' }

    it { assert_nil(tree) }
    it { assert(failure_reason.start_with?(err_prefix)) }
  end

  describe '::blank_line' do
    let(:prog) { load_sample('blank_line') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '::blank_line_with_whitespace' do
    let(:prog) { load_sample('blank_line_with_whitespace') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '::add' do
    let(:prog) { load_sample('add') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '::mul' do
    let(:prog) { load_sample('mul') }

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

  describe '::signal' do
    let(:prog) { load_sample('signal') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '::jump' do
    let(:prog) { load_sample('jump') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '::vent' do
    let(:prog) { load_sample('vent') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '::split' do
    let(:prog) { load_sample('split') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe '^ param' do
    let(:prog) { load_sample('caret_param') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end

  describe 'variable storage' do
    let(:prog) { load_sample('variable_storage') }

    it { refute_nil(tree) }
    it { assert_nil(failure_reason) }
  end
end

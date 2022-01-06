# frozen_string_literal: true

$LOAD_PATH.unshift "#{__dir__}/../activesupport/lib"
$LOAD_PATH.unshift "#{__dir__}/../activesupport/gems/minitest-5.14.4/lib/"
$LOAD_PATH.unshift "#{__dir__}/../activesupport/gems/concurrent-ruby-1.1.9/lib/concurrent-ruby"
$LOAD_PATH.unshift "#{__dir__}/../activesupport/gems/i18n-1.8.10/lib"
$LOAD_PATH.unshift "#{__dir__}/../activesupport/gems/tzinfo-2.0.4/lib"

require "minitest"

class Activesupport < Benchmark
  def initialize
    @inner_iterations = 0
    @known_results = {
      1 => {
        :assertions => 9,
        :count => 4,
        :errors => 0,
        :failures => 0,
        :skips => 0
      },

      10 => {
        :assertions => 106,
        :count => 54,
        :errors => 4,
        :failures => 0,
        :skips => 0
      },

      30 => {
        :assertions => 1289,
        :count => 560,
        :errors => 16,
        :failures => 0,
        :skips => 0
      },

      50 => {
        :assertions => 3150,
        :count => 980,
        :errors => 16,
        :failures => 0,
        :skips => 0
      },

      100 => {
        :assertions => 7852,
        :count => 2513,
        :errors => 17,
        :failures => 0,
        :skips => 0
      },

      135 => {
        :assertions => 10770,
        :count => 3052,
        :errors => 17,
        :failures => 0,
        :skips => 0
      },
    }
    @know_tests = [
      "test/actionable_error_test.rb",
      "test/array_inquirer_test.rb",
      "test/autoload_test.rb",
      # "test/benchmarkable_test.rb",
      "test/broadcast_logger_test.rb",
      "test/cache/cache_entry_test.rb",
      "test/cache/cache_key_test.rb",
      "test/cache/cache_store_logger_test.rb",
      "test/cache/cache_store_namespace_test.rb",
      # "test/cache/cache_store_setting_test.rb",
      "test/cache/coder_test.rb",
      "test/cache/local_cache_middleware_test.rb",
      "test/cache/stores/file_store_test.rb",
      # "test/cache/stores/mem_cache_store_test.rb",
      "test/cache/stores/memory_store_test.rb",
      "test/cache/stores/null_store_test.rb",
      # "test/cache/stores/redis_cache_store_test.rb",
      "test/callback_inheritance_test.rb",
      "test/callbacks_test.rb",
      "test/clean_backtrace_test.rb",
      "test/clean_logger_test.rb",
      "test/concern_test.rb",
      "test/concurrency/load_interlock_aware_monitor_test.rb",
      "test/configurable_test.rb",
      "test/configuration_file_test.rb",
      "test/constantize_test_cases.rb",
      "test/constantize_test_helpers.rb",
      "test/core_ext/array/access_test.rb",
      "test/core_ext/array/conversions_test.rb",
      "test/core_ext/array/extract_options_test.rb",
      "test/core_ext/array/extract_test.rb",
      "test/core_ext/array/grouping_test.rb",
      "test/core_ext/array/wrap_test.rb",
      "test/core_ext/bigdecimal_test.rb",
      "test/core_ext/class/attribute_test.rb",
      "test/core_ext/class_test.rb",
      "test/core_ext/date_and_time_compatibility_test.rb",
      "test/core_ext/date_ext_test.rb",
      "test/core_ext/date_time_ext_test.rb",
      "test/core_ext/digest/uuid_test.rb",
      "test/core_ext/duration_test.rb",
      "test/core_ext/enumerable_test.rb",
      "test/core_ext/file_test.rb",
      "test/core_ext/hash/transform_values_test.rb",
      # "test/core_ext/hash_ext_test.rb",
      "test/core_ext/integer_ext_test.rb",
      "test/core_ext/kernel/concern_test.rb",
      "test/core_ext/kernel_test.rb",
      "test/core_ext/load_error_test.rb",
      "test/core_ext/module/anonymous_test.rb",
      "test/core_ext/module/attr_internal_test.rb",
      "test/core_ext/module/attribute_accessor_per_thread_test.rb",
      "test/core_ext/module/attribute_accessor_test.rb",
      "test/core_ext/module/attribute_aliasing_test.rb",
      "test/core_ext/module/concerning_test.rb",
      "test/core_ext/module/introspection_test.rb",
      "test/core_ext/module/remove_method_test.rb",
      "test/core_ext/module_test.rb",
      "test/core_ext/name_error_test.rb",
      "test/core_ext/numeric_ext_test.rb",
      "test/core_ext/object/acts_like_test.rb",
      "test/core_ext/object/blank_test.rb",
      "test/core_ext/object/deep_dup_test.rb",
      "test/core_ext/object/duplicable_test.rb",
      "test/core_ext/object/inclusion_test.rb",
      "test/core_ext/object/instance_variables_test.rb",
      "test/core_ext/object/json_cherry_pick_test.rb",
      "test/core_ext/object/json_gem_encoding_test.rb",
      "test/core_ext/object/to_param_test.rb",
      "test/core_ext/object/to_query_test.rb",
      "test/core_ext/object/try_test.rb",
      "test/core_ext/range_ext_test.rb",
      "test/core_ext/regexp_ext_test.rb",
      "test/core_ext/secure_random_test.rb",
      "test/core_ext/string_ext_test.rb",
      "test/core_ext/symbol_ext_test.rb",
      "test/core_ext/time_ext_test.rb",
      # "test/core_ext/time_with_zone_test.rb",
      "test/core_ext/uri_ext_test.rb",
      "test/current_attributes_test.rb",
      "test/dependencies_test.rb",
      "test/deprecation/method_wrappers_test.rb",
      "test/deprecation/proxy_wrappers_test.rb",
      "test/deprecation_test.rb",
      "test/descendants_tracker_test.rb",
      "test/digest_test.rb",
      "test/encrypted_configuration_test.rb",
      "test/encrypted_file_test.rb",
      # "test/evented_file_update_checker_test.rb",
      "test/executor_test.rb",
      "test/file_update_checker_shared_tests.rb",
      "test/file_update_checker_test.rb",
      "test/fork_tracker_test.rb",
      "test/gzip_test.rb",
      "test/hash_with_indifferent_access_test.rb",
      "test/i18n_test.rb",
      "test/inflector_test.rb",
      "test/json/decoding_test.rb",
      "test/json/encoding_test.rb",
      "test/key_generator_test.rb",
      "test/lazy_load_hooks_test.rb",
      "test/log_subscriber_test.rb",
      "test/logger_test.rb",
      "test/message_encryptor_test.rb",
      "test/message_verifier_test.rb",
      "test/messages/rotation_configuration_test.rb",
      "test/metadata/shared_metadata_tests.rb",
      "test/multibyte_chars_test.rb",
      "test/multibyte_proxy_test.rb",
      "test/notifications/evented_notification_test.rb",
      "test/notifications/instrumenter_test.rb",
      "test/notifications_test.rb",
      "test/number_helper_i18n_test.rb",
      "test/number_helper_test.rb",
      "test/option_merger_test.rb",
      "test/ordered_hash_test.rb",
      "test/ordered_options_test.rb",
      "test/parameter_filter_test.rb",
      "test/per_thread_registry_test.rb",
      "test/reloader_test.rb",
      "test/rescuable_test.rb",
      "test/safe_buffer_test.rb",
      "test/secure_compare_rotator_test.rb",
      "test/security_utils_test.rb",
      "test/share_lock_test.rb",
      "test/silence_logger_test.rb",
      "test/string_inquirer_test.rb",
      "test/subscriber_test.rb",
      "test/tagged_logging_test.rb",
      "test/test_case_test.rb",
      "test/testing/after_teardown_test.rb",
      "test/testing/constant_lookup_test.rb",
      "test/testing/file_fixtures_test.rb",
      "test/testing/method_call_assertions_test.rb",
      # "test/time_travel_test.rb",
      # "test/time_zone_test.rb",
      "test/transliterate_test.rb",
      "test/xml_mini/jdom_engine_test.rb",
      "test/xml_mini/libxml_engine_test.rb",
      "test/xml_mini/libxmlsax_engine_test.rb",
      "test/xml_mini/nokogiri_engine_test.rb",
      "test/xml_mini/nokogirisax_engine_test.rb",
      "test/xml_mini/rexml_engine_test.rb",
      "test/xml_mini/xml_mini_engine_test.rb",
    # "test/xml_mini_test.rb",
    # "test/zeitwerk_inflector_test.rb",
    ]
  end

  def inner_benchmark_loop(inner_iterations)
    @inner_iterations = inner_iterations
    if inner_iterations > @know_tests.size
      puts "Unsupported number of tests to execute"
      puts "There are currently at most #{@know_tests.size} tests"
      return false
    end

    # p i; p @know_tests[i];
    (0...inner_iterations).each { |i| require_relative "#{__dir__}/../activesupport/#{@know_tests[i]}" }

    reporter = Minitest.run ["--no-plugins", "--seed", "42"]
    verify_result reporter.reporters[0]
  end

  def verify_result(result)
    expected = @known_results[@inner_iterations]
    unless expected
      puts "No expected data configured for #{@inner_iterations}"
      puts "assertions #{result.assertions}"
      puts "count      #{result.count}"
      puts "errors     #{result.errors}"
      puts "failures   #{result.failures}"
      puts "skips      #{result.skips}"
      return false
    end

    (expected[:assertions] == result.assertions and
      expected[:count] == result.count and
      expected[:errors] == result.errors and
      expected[:failures] == result.failures and
      expected[:skips] == result.skips)
  end
end

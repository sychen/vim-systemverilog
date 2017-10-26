" Language:     SystemVerilog
" Maintainer:   Sung-Yu Chen <sychen@realtek.com>
" Last Update:  Sun Sep 06 08:32:00 CST 2015
" Requires:     Vim 7.0 or later
" Usage:        For inclusion by systemverilog.vim

" uvm_pkg.sv

syn keyword     uvmPackage                      uvm_pkg

" base/uvm_component.svh
syn keyword     uvmClass                        uvm_component

    syn keyword uvmClass                        uvm_sequence_base
    syn keyword uvmClass                        uvm_objection
    syn keyword uvmClass                        uvm_severity
    syn keyword uvmClass                        uvm_event_pool
    syn keyword uvmClass                        uvm_printer
    syn keyword uvmIdentifier                   uvm_build_phase
    syn keyword uvmFunction                     uvm_report_fatal

" base/uvm_event.svh

syn keyword uvmClass                            uvm_event_base
syn keyword uvmClass                            uvm_event

" base/uvm_event_callback.svh

syn keyword uvmClass                            uvm_event_callback


" base/uvm_transaction.svh

syn keyword uvmClass                            uvm_transaction

" base/uvm_report_server.svh

syn keyword uvmClass        uvm_report_server
syn keyword uvmClass        uvm_default_report_server
    syn keyword uvmClass        uvm_report_catcher
    syn match   uvmFunction     "\(uvm_report_catcher::\)\@<=process_all_report_catchers"
    syn keyword uvmClass        uvm_report_message_element_container

" base/uvm_root.svh

    syn keyword uvmClass                        uvm_test_done_objection
    syn keyword uvmClass                        uvm_cmdline_processor

syn keyword     uvmClass                        uvm_root

syn keyword     uvmIdentifier                   uvm_top

" base/uvm_resource.svh

syn keyword     uvmClass                        uvm_resource_base
syn keyword     uvmClass                        uvm_resource_types
syn keyword     uvmClass                        uvm_resource_options
    syn keyword     uvmFunction                     uvm_glob_to_re
    syn keyword     uvmFunction                     uvm_re_match

" base/uvm_config_db.svh

    syn keyword     uvmClass                        uvm_config_db_options

syn keyword     uvmClass                        uvm_config_db

    syn keyword     uvmClass                    uvm_resource_db
    syn keyword     uvmClass                    uvm_resource
    syn keyword     uvmClass                    uvm_queue
    syn keyword     uvmClass                    uvm_resource_pool
    syn keyword     uvmClass                    uvm_resource_types

syn keyword     uvmClass                        uvm_config_wrapper

" base/uvm_factory.svh

syn keyword     uvmClass                        uvm_object_wrapper
syn keyword     uvmClass                        uvm_factory
syn keyword     uvmClass                        uvm_default_factory
syn keyword     uvmClass                        uvm_factory_override
syn keyword     uvmClass                        uvm_factory_queue_class

" base/uvm_links.svh

syn keyword uvmClass                            uvm_link_base
syn keyword uvmClass                            uvm_parent_child_link
syn match   uvmFunction                         "\(uvm_parent_child_link::\)\@<=get_link"
syn keyword uvmClass                            uvm_cause_effect_link
syn match   uvmFunction                         "\(uvm_cause_effect_link::\)\@<=get_link"
syn keyword uvmClass                            uvm_related_link
syn match   uvmFunction                         "\(uvm_related_link::\)\@<=get_link"


" base/uvm_object.svh

syn keyword     uvmClass                        uvm_object

    syn keyword uvmFunction                     uvm_report_warning

    syn keyword uvmClass                        uvm_comparer
    syn keyword uvmClass                        uvm_packer

syn match       systemverilogIdentifier         "\(::\)\@<=type_id\(::\)\@="
syn match       systemverilogFunction           "\(::type_id::\)\@<=create"
" base/uvm_object_globals.svh

syn keyword     uvmTypedef                      uvm_bitstream_t
syn keyword     uvmTypedef                      uvm_integral_t
syn keyword     uvmEnum                         uvm_radix_enum
syn keyword     uvmFunction                     uvm_radix_to_string
syn keyword     uvmEnum                         uvm_recursion_policy_enum
syn keyword     uvmEnum                         uvm_active_passive_enum
syn keyword     uvmTypedef                      uvm_severity_type
syn keyword     uvmEnum                         uvm_action
syn keyword     uvmEnum                         uvm_action_type
syn keyword     uvmEnum                         uvm_verbosity
syn keyword     uvmTypedef                      UVM_FILE
syn keyword     uvmEnum                         uvm_port_type_e
syn keyword     uvmEnum                         uvm_sequencer_arb_mode
syn keyword     uvmTypedef                      UVM_SEQ_ARB_TYPE
syn keyword     uvmEnum                         uvm_sequence_state
syn keyword     uvmTypedef                      uvm_sequence_state_enum
syn keyword     uvmEnum                         uvm_sequence_lib_mode
syn keyword     uvmEnum                         uvm_phase_type
syn keyword     uvmEnum                         uvm_phase_state
syn keyword     uvmEnum                         uvm_wait_op
syn keyword     uvmEnum                         uvm_objection_event

    syn keyword     uvmClass                        uvm_table_printer
    syn keyword     uvmClass                        uvm_tree_printer
    syn keyword     uvmClass                        uvm_line_printer
    syn keyword     uvmClass                        uvm_text_tr_database

syn keyword     uvmIdentifier                   uvm_default_table_printer
syn keyword     uvmIdentifier                   uvm_default_tree_printer
syn keyword     uvmIdentifier                   uvm_default_line_printer
syn keyword     uvmIdentifier                   uvm_default_printer
syn keyword     uvmIdentifier                   uvm_default_packer
syn keyword     uvmIdentifier                   uvm_default_comparer


" base/uvm_recorder.svh

syn keyword uvmClass                            uvm_recorder
syn match   uvmFunction                         "\(uvm_recorder::\)\@<=get_recorder_from_handle"

" base/uvm_registry.svh

syn keyword uvmClass                            uvm_component_registry
syn keyword uvmClass                            uvm_object_registry

" base/uvm_misc.svh

syn keyword     uvmClass                        uvm_void
syn keyword     uvmClass                        uvm_status_container
syn keyword     uvmEnum                         uvm_apprepend
syn keyword     uvmClass                        uvm_scope_stack
syn keyword     uvmIdentifier                   uvm_global_random_seed
syn keyword     uvmClass                        uvm_seed_map
syn keyword     uvmIdentifier                   uvm_random_seed_table_lookup
syn keyword     uvmFunction                     uvm_instance_scope
syn keyword     uvmFunction                     uvm_oneway_hash
syn keyword     uvmFunction                     uvm_create_random_seed
syn keyword     uvmFunction                     uvm_object_value_str
syn keyword     uvmFunction                     uvm_leaf_scope
syn keyword     uvmFunction                     uvm_bitstream_to_string
syn keyword     uvmFunction                     uvm_integral_to_string
syn keyword     uvmFunction                     uvm_vector_to_string
syn keyword     uvmFunction                     uvm_get_array_index_int
syn keyword     uvmFunction                     uvm_get_array_index_string
syn keyword     uvmFunction                     uvm_is_array
syn keyword     uvmFunction                     uvm_has_wildcard
syn keyword     uvmClass                        uvm_utils

    " Referred
    syn keyword uvmClass                        uvm_coreservice_t

" base/uvm_tr_database.svh

syn keyword     uvmClass                        uvm_tr_database

" base/uvm_tr_stream.svh

syn keyword uvmClass                        uvm_tr_stream
    syn keyword uvmClass                            uvm_text_recorder
syn keyword uvmClass                        uvm_text_tr_stream

" comps/uvm_agent.svh
"
syn keyword     uvmClass                        uvm_agent

" comps/uvm_env.svh

syn keyword     uvmClass                        uvm_env

" dap/uvm_set_before_get_dap_base.svh

syn keyword     uvmClass                        uvm_set_get_dap_base

" dap/uvm_set_before_get_dap.svh

syn keyword     uvmClass                        uvm_set_before_get_dap

" dap/uvm_simple_lock_dap.svh
syn keyword     uvmClass                        uvm_simple_lock_dap
" macros/uvm_callback.svh

syn keyword     uvmClass                        uvm_callback
syn keyword     uvmClass                        uvm_callback_iter
syn keyword     uvmClass                        uvm_callbacks
syn keyword     uvmClass                        uvm_typed_callbacks
syn keyword     uvmClass                        uvm_derived_callbacks
syn keyword     uvmClass                        uvm_callbacks_base
syn keyword     uvmClass                        uvm_typeid_base
syn keyword     uvmClass                        uvm_typeid

" macros/uvm_callback_defines.svh

syn match       uvmMacro                        "\`uvm_register_cb"
syn match       uvmMacro                        "\`uvm_set_super_type"
syn match       uvmMacro                        "\`uvm_do_callbacks"
syn match       uvmMacro                        "\`uvm_do_obj_callbacks"
syn match       uvmMacro                        "\`uvm_do_callbacks_exit_on"
syn match       uvmMacro                        "\`uvm_do_obj_callbacks_exit_on"

syn match       uvmMacro                        "\`uvm_cb_trace"
syn match       uvmMacro                        "\`uvm_cb_trace_noobj"

" macros/uvm_object_defines.svh
"
syn match uvmMacro              "\`uvm_field_utils_begin"
syn match uvmMacro              "\`uvm_field_utils_end"
syn match uvmMacro              "\`uvm_object_utils"
syn match uvmMacro              "\`uvm_object_param_utils"
syn match uvmMacro              "\`uvm_object_utils_begin"
syn match uvmMacro              "\`uvm_object_param_utils_begin"
syn match uvmMacro              "\`uvm_object_utils_end"
syn match uvmMacro              "\`uvm_component_utils"
syn match uvmMacro              "\`uvm_component_param_utils"
syn match uvmMacro              "\`uvm_component_utils_begin"
syn match uvmMacro              "\`uvm_component_param_utils_begin"
syn match uvmMacro              "\`uvm_component_utils_end"
syn match uvmMacro              "\`uvm_field_int"
syn match uvmMacro              "\`uvm_field_real"
syn match uvmMacro              "\`uvm_field_enum"
syn match uvmMacro              "\`uvm_field_object"
syn match uvmMacro              "\`uvm_field_event"
syn match uvmMacro              "\`uvm_field_string"
syn match uvmMacro              "\`uvm_field_array_enum"
syn match uvmMacro              "\`uvm_field_array_int"
syn match uvmMacro              "\`uvm_field_sarray_int"
syn match uvmMacro              "\`uvm_field_sarray_enum"
syn match uvmMacro              "\`uvm_field_array_object"
syn match uvmMacro              "\`uvm_field_sarray_object"
syn match uvmMacro              "\`uvm_field_array_string"
syn match uvmMacro              "\`uvm_field_sarray_string"
syn match uvmMacro              "\`uvm_field_queue_enum"
syn match uvmMacro              "\`uvm_field_queue_int"
syn match uvmMacro              "\`uvm_field_queue_object"
syn match uvmMacro              "\`uvm_field_queue_string"
syn match uvmMacro              "\`uvm_field_aa_int_string"
syn match uvmMacro              "\`uvm_field_aa_string_string"
syn match uvmMacro              "\`uvm_field_aa_object_string"
syn match uvmMacro              "\`uvm_field_aa_int_int"
syn match uvmMacro              "\`uvm_field_aa_int_int"
syn match uvmMacro              "\`uvm_field_aa_int_int_unsigned"
syn match uvmMacro              "\`uvm_field_aa_int_integer"
syn match uvmMacro              "\`uvm_field_aa_int_integer_unsigned"
syn match uvmMacro              "\`uvm_field_aa_int_byte"
syn match uvmMacro              "\`uvm_field_aa_int_byte_unsigned"
syn match uvmMacro              "\`uvm_field_aa_int_shortint"
syn match uvmMacro              "\`uvm_field_aa_int_shortint_unsigned"
syn match uvmMacro              "\`uvm_field_aa_int_longint"
syn match uvmMacro              "\`uvm_field_aa_int_longint_unsigned"
syn match uvmMacro              "\`uvm_field_aa_int_key"
syn match uvmMacro              "\`uvm_field_aa_string_int"
syn match uvmMacro              "\`uvm_field_aa_object_int"

" base/uvm_pool.svh
syn keyword     uvmClass                        uvm_pool

" seq/uvm_sequence_item.svh

syn keyword     uvmClass                        uvm_sequence_item
    syn match   uvmMacro                        "\`uvm_object_registry"
    syn keyword uvmClass                        uvm_report_handler
    syn keyword uvmClass                        uvm_report_message

" seq/uvm_sequence.svh

syn keyword     uvmClass                        uvm_sequence

" seq/uvm_sequencer_base.svh

syn keyword uvmClass                        uvm_sequencer_base
    syn keyword uvmClass                        uvm_sequence_request
    syn match   uvmMacro                        "\`uvm_warning"
    syn match   uvmMacro                        "\`uvm_info"
    syn match   uvmMacro                        "\`uvm_error"
    syn match   uvmMacro                        "\`uvm_fatal"


" seq/uvm_sequencer_param_base.svh

syn keyword     uvmClass                        uvm_sequencer_param_base
    syn keyword uvmClass                        uvm_sequencer_analysis_fifo
    syn keyword uvmClass                        uvm_analysis_export
    syn keyword uvmClass                        uvm_tlm_fifo

" seq/uvm_sequencer.svh

syn keyword     uvmClass                        uvm_sequencer
    syn match   uvmMacro                        "\`uvm_component_param_utils"
    syn keyword uvmClass                        uvm_seq_item_pull_imp
    syn keyword uvmFunction                     uvm_report_info
    syn keyword uvmFunction                     uvm_report_error
    syn keyword uvmClass                        uvm_port_component_base


" comp/uvm_driver.svh

syn keyword     uvmClass                        uvm_driver

    syn keyword uvmClass                        uvm_seq_item_pull_port
    syn keyword uvmClass                        uvm_analysis_port

" comp/uvm_scoreboard.svh

syn keyword     uvmClass                        uvm_scoreboard

" comp/uvm_test.svh

syn keyword     uvmClass                        uvm_test

" macros/uvm_sequence_defines.svh

syn match       uvmMacro                        "\`uvm_create\>"
syn match       uvmMacro                        "\`uvm_create_on"
syn match       uvmMacro                        "\`uvm_do\>"
syn match       uvmMacro                        "\`uvm_do_with"
syn match       uvmMacro                        "\`uvm_do_pri\>"
syn match       uvmMacro                        "\`uvm_do_pri_with"
syn match       uvmMacro                        "\`uvm_do_on_pri_with"
syn match       uvmMacro                        "\`uvm_do_on\>"
syn match       uvmMacro                        "\`uvm_do_on_pri\>"
syn match       uvmMacro                        "\`uvm_do_on_with"

syn match       uvmMacro                        "\`uvm_send"
syn match       uvmMacro                        "\`uvm_send_pri"
syn match       uvmMacro                        "\`uvm_rand_send"
syn match       uvmMacro                        "\`uvm_rand_send_pri"
syn match       uvmMacro                        "\`uvm_rand_send_pri_with"

syn match       uvmMacro                        "\`uvm_add_to_seq_lib"
syn match       uvmMacro                        "\`uvm_sequence_library_utils"

syn match       uvmMacro                        "\`uvm_declare_p_sequencer"

" others
syn keyword     uvmClass                        uvm_blocking_put_port
syn keyword     uvmClass                        uvm_report_object
syn keyword     uvmClass                        uvm_phase
syn keyword     uvmClass                        uvm_domain
syn keyword     uvmFunction                     get_config_int


hi def link uvmMacro                        Macro
hi def link uvmClass                        Type
hi def link uvmPackage                      Identifier
hi def link uvmFunction                     Function
hi def link uvmIdentifier                   Identifier
hi def link uvmEnum                         Structure
hi def link uvmTypedef                      Typedef


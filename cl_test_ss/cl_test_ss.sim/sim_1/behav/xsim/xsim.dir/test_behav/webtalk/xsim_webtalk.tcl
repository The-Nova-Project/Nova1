webtalk_init -webtalk_dir /home/khadija/cl_test_ss/cl_test_ss.sim/sim_1/behav/xsim/xsim.dir/test_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Fri Mar 11 11:55:08 2022" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2021.1 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "3247384" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "38e9f31e-c383-40aa-8f23-1ced0a5194c2" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "dd1c8c3b4e614fcd9da39282688e6dc9" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "12" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "CentOS" -context "user_environment"
webtalk_add_data -client project -key os_release -value "CentOS Linux release 7.9.2009 (Core)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2499.998 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "33.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "204 ns" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.28_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "138868_KB" -context "xsim\\usage"
webtalk_transmit -clientid 347855061 -regid "" -xml /home/khadija/cl_test_ss/cl_test_ss.sim/sim_1/behav/xsim/xsim.dir/test_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/khadija/cl_test_ss/cl_test_ss.sim/sim_1/behav/xsim/xsim.dir/test_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/khadija/cl_test_ss/cl_test_ss.sim/sim_1/behav/xsim/xsim.dir/test_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate

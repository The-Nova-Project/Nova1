webtalk_init -webtalk_dir /home/nameer/standaloneuart/project_1.sim/sim_1/behav/xsim/xsim.dir/teststandaloneuart_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Fri Mar 25 07:54:47 2022" -context "software_version_and_target_device"
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
webtalk_add_data -client project -key random_id -value "e4c17937-bd11-4d6f-830d-51614f387963" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "f0235b073e3b4ad089f399e7e71fbbe5" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "34" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "CentOS" -context "user_environment"
webtalk_add_data -client project -key os_release -value "CentOS Linux release 7.9.2009 (Core)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2499.998 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "33.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "235 ns" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.02_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "134924_KB" -context "xsim\\usage"
webtalk_transmit -clientid 1360273682 -regid "" -xml /home/nameer/standaloneuart/project_1.sim/sim_1/behav/xsim/xsim.dir/teststandaloneuart_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/nameer/standaloneuart/project_1.sim/sim_1/behav/xsim/xsim.dir/teststandaloneuart_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/nameer/standaloneuart/project_1.sim/sim_1/behav/xsim/xsim.dir/teststandaloneuart_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate

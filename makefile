
build:
	docker run --platform linux/amd64 -t --rm -v ./src/fpga:/build didiermalenfant/quartus:22.1-apple-silicon quartus_sh --flow compile ap_core

deploy:
	~/fpga/reverse_bits/reverse_bits output_files/ap_core.rbf output_files/bitstream.rbf_r && cp output_files/bitstream.rbf_r /Volumes/NO\ NAME/Cores/Example\ Author.Interact/bitstream.rbf_r && diskutil eject /Volumes/NO\ NAME
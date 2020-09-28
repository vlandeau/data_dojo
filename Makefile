.PHONY: *

#################################################################
# Shared variables
#################################################################

PACKAGE_DIR=enedis_cosy

#################################################################
# help
#################################################################


upgrade-pip:
	poetry run pip install --upgrade pip

install:
	poetry run jupyter contrib nbextension install --user
	poetry run jupyter nbextension enable toc2/main
	poetry run jupyter nbextension enable varInspector/main
	poetry run jupyter nbextension enable execute_time/ExecuteTime
	poetry run jupyter nbextension enable hide_input/main
	poetry run jupyter nbextension enable hide_input_all/main
	poetry run jupyter nbextension enable init_cell/main
	poetry run jupyter nbextension enable collapsible_headings/main
	poetry run jupyter nbextension enable notify/notify
	poetry run jupyter nbextension enable splitcell/splitcell
	poetry run jupyter nbextension enable toggle_all_line_numbers/main
	poetry install 

setup: upgrade-pip install

notebook: 
	poetry run jupyter notebook

jupyterlab: 
	poetry run jupyter lab

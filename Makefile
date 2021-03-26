all: Duckiefloat_ROS_Diagram.pdf

fsm: default.pdf

%.dot: %.dot.in
	python prepare.py < $< > $@

%.pdf: %.dot
	dot $< -Tpdf -o $@


update-continuous: 
	python recreate_on_changes.py  Duckiefloat_ROS_Diagram.dot.in Duckiefloat_ROS_Diagram.dot

upload-andrea:
	cp Duckiefloat_ROS_Diagram.pdf /Users/andrea/a.censi@gmail.com/1601-Duckietown/duckietown-public/design/Duckiefloat_ROS_Diagram.pdf
	
	

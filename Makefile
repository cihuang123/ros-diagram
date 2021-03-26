all: Locobot_ROS_Diagram.pdf

fsm: default.pdf

%.dot: %.dot.in
	python prepare.py < $< > $@

%.pdf: %.dot
	dot $< -Tpdf -o $@


update-continuous: 
	python recreate_on_changes.py  Locobot_ROS_Diagram.dot.in Locobot_ROS_Diagram_ROS_Diagram.dot



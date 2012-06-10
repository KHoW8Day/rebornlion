
#Copyright © (C) 2012 Emory Hughes Merryman, III!

# This file is part of rebornlion.
#
# rebornlion is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# rebornlion is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

HEAD = /bin/head
MKDIR = /bin/mkdir
RM = /bin/rm
SED = /bin/sed
TAIL = /bin/tail
XSLTPROC = /usr/bin/xsltproc

BASEDIR = ..

all : $(addprefix build/,$(addsuffix .txt,readme oz))

clean :
	${RM} --recursive --force build dist

build/%.txt : ${BASEDIR}/style/text.xml %.xml
	${MKDIR} --parents $(@D)
	${XSLTPROC} --output $@ $^

############################################################################## #
# Copyright (C) 2019 by 52 North                                               #
# Initiative for Geospatial Open Source Software GmbH                          #
#                                                                              #
# Contact: Andreas Wytzisk                                                     #
# 52 North Initiative for Geospatial Open Source Software GmbH                 #
# Martin-Luther-King-Weg 24                                                    #
# 48155 Muenster, Germany                                                      #
# info@52north.org                                                             #
#                                                                              #
# This program is free software; you can redistribute and/or modify it under   #
# the terms of the GNU General Public License version 2 as published by the    #
# Free Software Foundation.                                                    #
#                                                                              #
# This program is distributed WITHOUT ANY WARRANTY; even without the implied   #
# WARRANTY OF MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU #
# General Public License for more details.                                     #
#                                                                              #
# You should have received a copy of the GNU General Public License along with #
# this program (see gpl-2.0.txt). If not, write to the Free Software           #
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA or #
# visit the Free Software Foundation web page, http://www.fsf.org.             #
#                                                                              #
# Author: Daniel Nuest (daniel.nuest@uni-muenster.de)                          #
# Created: 2010-06-18                                                          #
# Project: sos4R - https://github.com/52North/sos4R                            #
#                                                                              #
############################################################################## #

#
# See OWS Common, OGC 06-121r9
#
setClass("SensorML",
         representation(xml = "xml_document",
                        coords = "data.frame",
                        id = "character",
                        name = "character",
                        description = "character",
                        boundedBy = "matrix",
                        # SOS 2.0.0: validTime is part of the response (not of the SensorML)
                        validTime = "GmlTimeObjectOrNULL"),
         prototype = list(xml = xml2::xml_missing(),
                          coords = data.frame(),
                          id = NA_character_,
                          name = NA_character_,
                          description = NA_character_,
                          boundedBy = matrix(),
                          validTime = NULL),
         validity = function(object) {
           #print("Entering validation: SensorML")
           return(TRUE)
         }
)

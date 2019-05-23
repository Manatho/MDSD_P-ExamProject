package org.xtext.mdsd_individual.ard.extensions

import org.xtext.mdsd_individual.ard.ardlers.BoardDefinition
import org.xtext.mdsd_individual.ard.ardlers.TYPE
import org.xtext.mdsd_individual.ard.ardlers.IO

class LibraryExtensions {
	def boolean isPinPresent(BoardDefinition definition, int pin, IO io, TYPE type) {

		if (io == 'input') {
			if (type == 'analog') {
				return definition.ain.contains(pin);
			} else {
				return definition.di.contains(pin);
			}
		} else {
			if (type == 'analog') {
				return definition.aout.contains(pin);
			} else {
				return definition.^do.contains(pin);
			}
		}
	}
}

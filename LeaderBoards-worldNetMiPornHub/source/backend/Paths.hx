package backend;

import flixel.graphics.frames.FlxAtlasFrames;

class Paths {
	public static function image(file:String) {
		return 'mods/images/' + file + '.png';
	}

	public static function xml(file:String) {
		return 'mods/images/' + file + '.xml';
	}

	public static function getSparrowAtlas(file:String) {
		return FlxAtlasFrames.fromSparrow(image(file), xml(file));
	}

	public static function font(file:String) {
		return 'mods/fonts/' + file;
	}

	public static function music(file:String) {
		return 'mods/music/' + file + '.ogg';
	}

	public static function sound(file:String) {
		return 'mods/sounds/' + file + '.ogg';
	}

	public static function json(file:String) {
		return 'mods/data/' + file + '.json';
	}
}

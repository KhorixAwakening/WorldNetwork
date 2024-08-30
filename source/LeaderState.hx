package;

import sys.io.File;

import yaml.Yaml;
import yaml.Parser;
import yaml.Renderer;

import flixel.FlxState;

class PlayState extends FlxState
{
	var userName:String = '';
	var passWord:String = '';

	var yamlData:String;
	var fileName:String;

	

	override public function create()
	{
		var user = {
			UserName: userName,
			passWord: passWord;
		}

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.CONTROL && FlxG.keys.justPressed.S)
		{
			saveData;
		}

		super.update(elapsed);
	}

	function saveData()
	{
		yamlData = Yaml.encode(data);

		fileName = "saveData.yaml";

		File.saveContent(fileName, yamlData);

		trace("Data Saved!");
	}

	function createUser(){
		var userFilePath:String = getUniqueFilePath("mods/data/playerChart", "yaml");
        
        	var playerYamlString:String = Yaml.render(playerNotes);
        	var enemyYamlString:String = Yaml.render(enemyNotes);
        
        	File.saveContent(playerFilePath, playerYamlString);
        	File.saveContent(enemyFilePath, enemyYamlString);
		
	}
}

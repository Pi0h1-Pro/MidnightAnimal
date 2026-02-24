function scrCheckAchievements(saveData) {
	getCatAchievement = true;
	for (var i = 0; i < array_length(saveData.cat_progress); i++) {
		if (!saveData.cat_progress[i])
			getCatAchievement = false;
	}
}

function Achievement (_name, _description, _progressLimit = 1, _secret = false) constructor {
	name = _name;
	description = _description;
	progress = 0;
	progressLimit = _progressLimit;
	secret = _secret;
	popup = noone;
	
	function getName() {
		return name;
	}
	
	function getDescription() {
		return description;
	}
	
	function getSecret() {
		return secret;
	}
	
	function addProgress(amount) {
		progress = min(progress + amount, progressLimit);
		getAchievement();
		if (progress > 0 && progress % max(round(progressLimit / 10), 1) == 0 && !isCompleted()) {
			createPopUp();
		}
		if (instance_exists(popup))
			popup.currentProgress = progress;
	}
	
	function setProgress(amount) {
		progress = min(amount, progressLimit);
		getAchievement();
		if (progress > 0 && progress % max(round(progressLimit / 10), 1) == 0 && !isCompleted()) {
			createPopUp();
		}
		if (instance_exists(popup))
			popup.currentProgress = progress;
	}
    
    function loadProgress(amount) {
		progress = min(amount, progressLimit);
	}
	
	function getProgress() {
		return progress;
	}
	
	function getProgressLimit() {
		return progressLimit;
	}
	
	function isCompleted() {
		return progress == progressLimit;
	}
	
	function getAchievement() {
		if (isCompleted()) {
			createPopUp();
		}
	}
	
	function createPopUp() {
		if (!instance_exists(popup)) {
			popup = instance_create_depth(0, 0, 0, objAchievementPopup, {
                achievementName : name,
                maxProgress : progressLimit
                });
			popup.root = self;
		}
	}
}

enum ach {
	WHAT_YEAR_IS_IT_AGAIN,
	DO_YOU_LIKE_YOUR_CAR,
	ACCORDING_TO_PLAN,
	RUNNING_MAN,
	BEAT_IT,
	YOURE_PRETTY_GOOD,
	SUPER_COMBO,
	ULTRA_COMBO,
	GOD_COMBO,
	SPARKING_COMBO,
	LEAVING_THIS_WORLD,
	BEHIND_THE_MASKS,
    DEAD_MEAT,
	FRIENDLY_FIRE,
	TOOLS_OF_THE_TRADE,
	CHA_CHK,
    MIDNIGHT_ARSENAL,
    HURTING_OTHER_PEOPLE,
    BANG_BANG,
    YOURE_DEAD,
    UNF,
    SEARCHING_OUT_OF_CONTROL,
    GIMME_A_DAMN_BREAK,
    RENDERSCARE,
    A_FAMILIAR_PLACE,
    BLOODLIFE_EXE,
    GETALIFE_EXE,
    ACHIEVEMENT_WHORE_ADDICT
}

function scrAchievementsInit() {
	achievements = [
		new Achievement("What Year Is It Again", "Kill 2005 enemies.", 2005),
		new Achievement("Do You Like Your Car?", "Go to the car 60 times.", 60),
		new Achievement("According To Plan", "Get an A+ on any chapter."),
		new Achievement("Running Man", "Finish a chapter in two minutes."),
		new Achievement("Beat It", "Finish a level as Ben using only your fists."),
		new Achievement("You're Pretty Good", "Beat a level without missing any shots."),
		new Achievement("Super Combo", "Perform a 10X combo."),
		new Achievement("Ultra Combo", "Perform a 15X combo."),
		new Achievement("God Combo", "Perform a 20X combo."),
		new Achievement("Sparking Combo", "Perform a 25X combo."),
		new Achievement("Leaving This World...", "Unlock Richard..", 1, true),
		new Achievement("Behind the Masks", "Unlock all of Erick's weapons.", 4),
		new Achievement("Dead Meat", "Unlock all of Ben's abilities.", 4),
		new Achievement("Friendly Fire", "Use a human shield."),
		new Achievement("Tools Of The Trade", "Use all melee weapons at least once.", 20),
		new Achievement("Cha-Chk", "Use all guns at least once.", 20),
		new Achievement("Midnight Arsenal", "Use every weapon in the game at least once.", 20),
		new Achievement("Hurting Other People", "Die for the first time."),
		new Achievement("Bang, Bang!", "Kill 12,500 enemies.", 12500),
		new Achievement("You're Dead.", "Die 1000 times.", 1000),
		new Achievement("Unf!", "Discover a secret."),
		new Achievement("Searching Out Of Control", "Find all secrets.", 3),
		new Achievement("Gimme A Damn Break", "Survive the fight club.", 1, true),
		new Achievement("Renderscare", "Finish No Talk.", 1, true),
		new Achievement("SetAchievement(\"A Familiar Place\")", "Finish Breakdown?", 1, true),
		new Achievement("bloodlife.exe", "Beat the main story once on any difficulty."),
		new Achievement("getalife.exe", "Get A+ on all the chapters on any difficulty.", 15),
		new Achievement("Achievement Whore Addict", "Unlock all achievements.", 27)
	]
}

function setAchievementProgress(achievementID, achievementProgress) {
	if(!achievements[achievementID].isCompleted()) {
		achievements[achievementID].setProgress(achievementProgress);
	}
}

function addAchievementProgress(achievementID, progressAmount) {
	if(!achievements[achievementID].isCompleted()) {
		achievements[achievementID].addProgress(progressAmount);
	}
}
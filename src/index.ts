import fs from 'fs-extra';
import dotenv from 'dotenv';
import path from 'path';
dotenv.config();

const pathFoldersDatapacks = {
	editor: path.join(__dirname, "..", "Animation Engine Editor"),
	runtime: path.join(__dirname, "..", "Animation Engine Runtime"),
};

(async () => {
	console.log("Start of generating files for project");

	const GITHUB_RUN_NUMBER = Number.parseInt(process.env.GITHUB_RUN_NUMBER ?? "-1");
	const SUBTRACT_BUILDS = Number.parseInt(process.env.SUBTRACT_BUILDS ?? "-1");
	const BUILD_TITLE = process.env.BUILD_TITLE;
	const VERSION = GITHUB_RUN_NUMBER == -1 || SUBTRACT_BUILDS == -1 || !BUILD_TITLE ? "DEVELOPMENT" : `${Number.parseInt(BUILD_TITLE.charAt(0)) >= 0 ? "v" + BUILD_TITLE : BUILD_TITLE}.${GITHUB_RUN_NUMBER - SUBTRACT_BUILDS}`;
	const VERSION_COLOR = process.env.BUILD_COLOR ?? "5";
	console.log(`Version: ${VERSION}`);
	console.log(`Version color: ${VERSION_COLOR}`);


	for (const key in pathFoldersDatapacks) {
		if (Object.prototype.hasOwnProperty.call(pathFoldersDatapacks, key)) {
			const pathFolder = (pathFoldersDatapacks as any)[key] as string;
			await fs.writeFile(path.join(pathFolder, "pack.mcmeta"), JSON.stringify({
				pack: {
					pack_format: 7,
					description: `§bAnimation Engine ${key.charAt(0).toUpperCase() + key.slice(1)} §${VERSION_COLOR}${VERSION}\n§7©2021 vanjmali`
				}
			}, null, 4));
			await fs.copyFile(path.join(__dirname, "..", "pack.png"), path.join(pathFolder, "pack.png"));

			// Rename to version
			if (VERSION !== "DEVELOPMENT") {
				await fs.rename(pathFolder, `${pathFolder} ${VERSION}`);
			}
		}
	}


	console.log("Generating files completed");
})();

import { access, constants, mkdir, writeFile } from 'fs/promises';
import { argv, exit } from 'process';
import { resolve } from 'path';
import { minecraft } from '../../api/dist/frontend.js';

(async() => {
	if (argv.length <= 2) {
		console.log('Pass targeted minecraft version in script parameter');
		exit(1);
	}
	const blockData = minecraft.get(argv[2], 'block')
		.sort((a, b) => a.name.localeCompare(b.name));
	const blockSpecificReplace = new Map([
		// Portal
		['end_portal', 'nether_star'],
		['nether_portal', 'ender_pearl'],
		// Liquid
		['water', 'water_bucket'],
		['lava', 'lava_bucket'],
		// Other
		['short_grass', 'wheat_seeds'],
		['powder_snow', 'snowball'],
		['sweet_berry_bush', 'sweet_berries']
	]);

	const writeSlot = async (dirPath, slot) => {
		const filePath = resolve(dirPath, `slot${slot}.mcfunction`);
		console.log('Generate', slot, 'file');
		try {
			await access(dirPath, constants.O_RDWR);
		} catch {
			await mkdir(dirPath, { recursive: true });
		}
		await writeFile(filePath, `# Slot ${slot} - ${argv[2]}\n`, { encoding: 'utf-8', flag: 'w' });
		for (const block of blockData) {
			await writeFile(
				filePath,
				`${(block.name === 'air')
						? `execute unless entity @s[nbt={Inventory:[{Slot:${slot}}]}]`
						: `execute if entity @s[nbt={Inventory:[{Slot:${slot},id:"minecraft:${
							(blockSpecificReplace.has(block.name))
								? blockSpecificReplace.get(block.name)
								: block.name
							}"}]}]`
				} run setblock ~ ~ ~ minecraft:${block.name}\n`,
				{
					encoding: 'utf-8',
					flag: 'a'
				}
			);
		}
	};

	await writeSlot(resolve('.', 'data', 'mapcraft', 'function', 'built_in', 'player', 'get_block'), '7b');
	await writeSlot(resolve('.', 'data', 'mapcraft', 'function', 'built_in', 'player', 'get_block'), '8b');
})();

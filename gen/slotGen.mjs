import { writeFile } from 'fs/promises';
import { argv } from 'process';
import { resolve } from 'path';
import { minecraft } from '../../api/dist/frontend.js';

(async() => {
	const blockData = minecraft.get(argv[2], 'block').sort((a, b) => a.name.localeCompare(b.name));
	const slotPath = {
		'7b': resolve('.', 'data', 'mapcraft', 'function', 'built_in', 'player', 'get_block', `slot7b.mcfunction`),
		'8b': resolve('.', 'data', 'mapcraft', 'function', 'built_in', 'player', 'get_block', `slot8b.mcfunction`)
	};
	const writeSlot = async (slot) => {
		console.log('Generate', slot, 'file');
		await writeFile(slotPath[slot], `# Slot ${slot} - ${argv[2]}\n`, { encoding: 'utf-8', flag: 'w' });
		for (const block of blockData) {
			let cleanId = block.name;
			let data = null;

			if (cleanId === 'short_grass')
				continue;
			if (cleanId === 'water_bucket' || cleanId === 'lava_bucket')
				cleanId = cleanId.slice(0, cleanId.indexOf('_'));
			data = (block.name === 'air')
				? `execute unless entity @s[nbt={Inventory:[{Slot:${slot}}]}]`
				: `execute if entity @s[nbt={Inventory:[{Slot:${slot},id:"minecraft:${block.name}"}]}]`;
			await writeFile(
				slotPath[slot],
				`${data} run setblock ~ ~ ~ minecraft:${cleanId}\n`,
				{
					encoding: 'utf-8',
					flag: 'a'
				}
			);
		}
	};
	await writeSlot('7b');
	await writeSlot('8b');
})();

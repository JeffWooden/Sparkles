import os
import fnmatch
import sys
import re

def find_mcfunction_files(directory='./data'):
	mcfunction_files = []
	for root, dirs, files in os.walk(directory):
		for filename in fnmatch.filter(files, '*.mcfunction'):
			file_path = os.path.join(root, filename)
			mcfunction_files.append(file_path)
	return mcfunction_files


def toggleDebug(filepath, mode=False):
	lines = None
	try:
		with open(filepath, 'r') as file:
			lines = file.readlines()
			file.close()
		lines = [line.strip() for line in lines]  # Stripping newline characters
	except FileNotFoundError:
		print(f"The file at {filepath} was not found.")
		raise None
	except Exception as e:
		print(f"An error occurred: {e}")
		raise e
	
	match = re.search(r"tellraw @a\[tag=debug\]", lines[1])
	has_debug_lines = lines[0].startswith("#>>DEBUG") and (match is not None)
	print(match)
	if mode and not has_debug_lines:
		filename = filepath
		match = re.search(r"(data)\/(.*?)\.mcfunction$", filename)
		if match:
			filename = match.group(2)
		filename = re.sub(r"\\", '/', filename)
		print(filename)
		lines.insert(0, f"#>>DEBUG\n{'' if mode else '#'}tellraw @a[tag=debug] \"{filename}\"")
	elif not mode and has_debug_lines:
		lines = lines[2:]

	with open(filepath, 'w') as file:
		file.write('\n'.join(lines))
		file.close()


# Example usage
if __name__ == "__main__":
	if len(sys.argv) != 2:
		print("Usage: python file.py <directory>")
		sys.exit(1)

	directory = sys.argv[1]  # The first argument is the directory
	boolean_arg = input("Boolean ?").lower() == 'true'  # Convert the second argument to a boolean
	
	[toggleDebug(file, boolean_arg) for file in find_mcfunction_files(directory)]
	
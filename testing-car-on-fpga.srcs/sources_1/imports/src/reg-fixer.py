import re

# Input and output file paths
input_file = 'led-hex.hex'  # Replace with your input file path
output_file = 'output.txt'  # Replace with your output file path

# Open the input file and read lines
with open(input_file, 'r') as f:
    lines = f.readlines()

# Regex pattern to match the lines
pattern = r"banks_0\[\] = 32'h([A-Fa-f0-9]{8});"

# Initialize index counter
index = 0

# Process the lines and replace banks_0[] with the correct index
with open(output_file, 'w') as f:
    for line in lines:
        # If the line matches the pattern
        if re.match(pattern, line):
            # Replace the [] with the current index
            new_line = re.sub(r"banks_0\[\]", f"banks_0[{index}]", line)
            # Increment the index for the next match
            index += 1
        else:
            # Keep the line as it is
            new_line = line
        
        # Write the modified (or original) line to the output file
        f.write(new_line)
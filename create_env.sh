# 1. Create the environment forced to exactly version 3.12.4
conda create --name trans_chat_env python=3.12.4 --yes

# 2. Activate the environment
conda activate trans_chat_env

# 3. Double-check that it successfully locked onto 3.12.4
python --version
import hashlib

def get_dynamic_part(key):
    unordered_key=hashlib.sha256(key).hexdigest()
    return unordered_key[4] + unordered_key[5] + unordered_key[3] + \
        unordered_key[6] + unordered_key[2] + unordered_key[7] + \
            unordered_key[1] + unordered_key[8]


username = b"FREEMAN"

key_part_static1_trial = "picoCTF{1n_7h3_|<3y_of_"
key_part_dynamic1_trial = get_dynamic_part(username)
key_part_static2_trial = "}"
key_full_template_trial = key_part_static1_trial + key_part_dynamic1_trial + key_part_static2_trial
print(key_full_template_trial)

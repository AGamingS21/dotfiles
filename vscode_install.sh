# Could create a folder called configs at ".config/Code/User/configs" and then create 1 or individual profiles and then
# create profile
# install extension
# move the extensions over
# create a two way sync of creating and uninstalling extensions and shortcuts of profiles by looking at extensions that are not in the config and add it in.
# only install from profile config file if the profile does not exist
# maybe create user tasks for running two way sync?

# it does work for importing profiles via cli while vscode is off.

# Example of creating profiles. Or just add the profile to the userDefaultProfiles array in storage.json
code --profile data

# Example of how to install extension to a specific profile. Will need to figure out where I can store this file.
code --install-extension ms-dotnettools.csharp --profile data


# This is the array that will need to be created for vscode folders to be created before launching code
# "userDataProfiles": [
#         {
#             "location": "data",
#             "name": "data",
#             "useDefaultFlags": {
#                 "keybindings": true
#             }
#         },
#         {
#             "location": "ce120a1",
#             "name": "dotnet"
#         }
#     ]



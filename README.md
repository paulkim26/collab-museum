# collab-museum

## Summary

This is the active working repository for The Collab: Museum. Whenever changes are made to this repository, Zesty will push to Steam Workshop.

## Setup

1. Sign up for a [Github](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home) account, if you don't have one already.

2. Let Zesty know your Github account name so he can add you as a collaborator to the repository.

3. Download and install [Github Desktop](https://desktop.github.com/) (or use git CLI if you already know how).

4. In Github Desktop, click on `File`, then `Clone repository...`. Enter `https://github.com/paulkim26/collab-museum` in the Repository URL field and set your local path to some location on your computer that you can easily find (this is where the room files will be stored). Click `Clone`.

The repository is now set up on your computer.

## How to push changes

1. _IMPORTANT_ - make sure NO ONE is currently working on the repository. Due to the way Escape Simulator room files work, changes have to be made linearly.

2. Let everyone know:

   a) That you are working on the repository (so no one else does too at the same time).

   b) What you plan to change.

   c) How long you expect to be doing the changes.

3. _IMPORTANT_ - Always pull the latest version of the repository when you start. Do this by clicking `Fetch origin` at the top on Github Desktop. Make sure you are on the `main` branch.

4. Create a new branch - this will host your new changes. Click on the `Current branch main` dropdown and click `New branch`. Give it a descriptive name about what you're planning to add/fix like `zesty-add-section-c` or `zesty-fix-z04`. Once created, it should show your current branch is now changed.

5. Now we're gonna copy the room files to your Escape Simulator UGC folder. Find your local repository files (an easy way is to right click on `Current repository collab-museum` and select `Show in Explorer`). Copy the folder called `Room_collab_museum` into your UGC folder (where you have folders like `Room_1`, `Room_2`, etc.).

6. Boot up Escape Simulator and you should see this new room in your workshop. Make your changes.

7. Once all done, copy this folder back into your repository folder, completely replacing what was there before.

   Note: Escape Simulator generates a `Backup` folder. Feel free to delete this or not. The repository is set to ignore this folder regardless.

8. Go back into Github Desktop - you should see a lot of new entries in the `Changes` sidebar. At the bottom where it says `Summary`, enter a short summary of what you changed and click `Commit`.

9. Once commiteed, click on `Publish Branch` - this will push your branch to Github.

10. Go to the [Pull requests](https://github.com/paulkim26/collab-museum/pulls) tab on the Github page. In the

## Rules

Pull requests must meet the following criteria to be accepted:

- Follows filename convention (no random filenames)
- Within project scope

## Notes

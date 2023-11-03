<p align="right">English | <a href="README.ru.md">Русский</a></p>

## Automatic Padavan firmware builds using GitHub servers

### Usage

- [Fork this repository](https://github.com/shvchk/padavan-builder-workflow/fork), further steps should be performed in your fork

- Copy your build config to [`build.config`](build.config)

  Build config template can be found in the [firmware repository](https://gitlab.com/hadzhioglu/padavan-ng/-/tree/master/trunk/configs/templates)

- Run the build process: [Actions](../../actions) → [Build firmware](../../actions/workflows/build.yml) → Run workflow

  ![run workflow](misc/run-workflow.webp)

  The build process will appear on the same page (if it doesn't appear, just refresh the page). You can get process details by clicking on it.

  Depending on the build config, build process usually takes from 10 to 60 minutes.

- While the process is in progress, its status indicator would be gold-ish circle

  ![workflow status progress](misc/workflow-status-in-progress.webp)

- If the process finishes successfully, its status indicator would turn green with a check mark

  ![workflow status success](misc/workflow-status-success.webp)

  Click on the finished process. Archive with the firmware would be stored as its artifact:

  ![workflow artifacts](misc/workflow-artifacts.webp)

  Firmware license does not permit binaries distribution, so artifacts are stored for 7 days for personal use.

- If the process finishes with an error, its status indicator would turn red with a cross

  ![workflow status fail](misc/workflow-status-fail.webp)

  Click on the finished process. To get details about the error, click on the failed `build` job at the left:

  ![workflow details fail](misc/workflow-details-fail.webp)

  Job report will be opened:

  ![workflow details get logs](misc/workflow-details-get-logs.webp)

  Here it's immediately obvious that it was *Check firmware size* step that failed — it is marked with a red circle with a cross. Specific reason is shown below: *Firmware size (18,492,849 bytes) exceeds max size (16,187,392 bytes) for your target device* — i.e. built firmware size is too big for the target device.

  In case of any error its reason is usually shown at the end of the log, as in the example above. To view full log click on the cog ⚙️ icon in the top right corner → View raw logs. You can also download compressed log archive in the same menu → Download log archive.

  If you can't figure out the problem on your own, you can ask community or firmware developer for help. In this case don't forget to attach the log archive.


### Updating your fork

To sync your fork with its origin repository, just click *Sync fork* → *Update branch* at the top of the main page of your fork:

![sync fork](misc/sync-fork.webp)


### Advanced usage

You can set the firmware repository, branch, specific tag or commit in the [`variables`](variables) file.

In the [`variables`](variables) file you can also specify which themes you want to install by uncommenting theme names in the `PADAVAN_THEMES` variable. Themes repository can be set with the `PADAVAN_THEMES_REPO` variable.

You can create a `pre-build.sh` script with any custom commands, which will be executed just before build process. By that time firmware source code is already downloaded, so you can add or change anything in it.

You can create a `post-build.sh` script, which will be executed right after build process.


---

Discussion: https://github.com/shvchk/padavan-builder-workflow/discussions/categories/general

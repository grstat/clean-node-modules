# Nodejs node_modules cleanup batch script
Ever needed to do a backup of your local development environment and needed to clean up your node_module folders for all your projects? Well here is a quick and dirty bat script to do it

## Usage
Open a command prompt and run the bat file passing the required arguments:

clean-node-modules.bat [root path] [/dry-run] [/y]
- [root path] Letter:\path\to\parent\folder\to\search\recursivly\and\cleanup\node_modules
  EXP: "C:\mydev\node-projects"
- [/dry-run] Do a dry run and only show what would have been deleted
- [/y] Pass this argument to skip confirmation of each folder deletion

---

### Example dry run output
```
******************************************************
Search started in D:\devel
******************************************************
-> Dry Run Delete: D:\devel\some-web-project\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@eslint\eslintrc\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@eslint-community\eslint-utils\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@radix-ui\react-collection\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@radix-ui\react-popper\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@radix-ui\react-progress\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@radix-ui\react-roving-focus\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@radix-ui\react-toggle-group\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@tailwindcss\typography\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@typescript-eslint\typescript-estree\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\@typescript-eslint\visitor-keys\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\chokidar\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\cmdk\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\fast-glob\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\glob\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\prop-types\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\resolve\test\resolver\symlinked\_\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\resolve\test\shadowed_core\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\string-width-cjs\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\strip-ansi-cjs\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\wrap-ansi\node_modules
-> Dry Run Delete: D:\devel\some-web-project\node_modules\wrap-ansi-cjs\node_modules
******************************************************
Found 22
Deleted 0
******************************************************
Done
```

### Example /y run
```
******************************************************
Search started in D:\devel
******************************************************
-> Deleting D:\devel\some-web-project\node_modules
******************************************************
Found 1
Deleted 1
******************************************************
Done
```

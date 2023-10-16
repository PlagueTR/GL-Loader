# Loader for OpenGL Core 4.6

Loader for OpenGL Core 4.6 generated using [glad webservice][glad-generator-webservice].<br>
In addition, a `premake5.lua` file is provided to make it easier to include glad into projects.

## About glad

glad is a multi-language GL/GLES/EGL/GLX/WGL loader generator based on the official specifications.

- **glad Generator GitHub:** [glad Generator GitHub][glad-github]
- **glad Generator:** [glad Generator Webservice][glad-generator-webservice]
- **Generator Settings Perma-link:** [glad Generator Settings](https://glad.dav1d.de/#language=c&specification=gl&api=gl%3D4.6&api=gles1%3Dnone&api=gles2%3Dnone&api=glsc2%3Dnone&profile=core&loader=on)

## Usage with Premake5

If you are using [Premake5](https://github.com/premake/premake-core) as your build system, you can add this loader as a dependency project using the provided `premake5.lua` file.

**Please note that the project is named `glad` and not `GL-Loader` in the Premake5 script as you include the loader header via `#include <glad/glad.h>`.**

1. Modify your workspace's `premake5.lua` to include the submodule using `include`

Example:
`premake5.lua` (Your workspace's premake script)
```lua

-- ...
-- Your workspace configuration - etc
-- ...

group "Dependencies"
    include "path/to/glad"
    include "path/to/other/dependencies" -- Include other dependencies
group ""

-- ...
-- Your project(s) configuration(s) - etc
-- ...

```

2. For all of your projects that will use GL-Loader; modify each of your project's `premake5.lua` to add `path/to/GL-Loader` into `includedirs` and link to `GL-Loader` using `links`

Example:
`premake5.lua` (Your project's lua script)
```lua
project "YourProjectName"
    -- Your project's settings

    includedirs {
        "path/to/glad",
        "path/to/other/include/directories" -- Other include directories
    }

    links {
        "glad",
        "other-library" -- Link to any other libraries your project depends on
    }


```

3. Run Premake5 to generate project files for your build system

```bash
premake5 [action] # replace [action] with the appropriate action (ex: 'vs2019', 'gmake2', etc)
```

For usage of glad, checkout [glad Generator Github][glad-github]

[glad-generator-webservice]: https://glad.dav1d.de/
[glad-github]: https://github.com/Dav1dde/glad
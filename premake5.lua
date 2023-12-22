project "glad"
    kind "StaticLib"
    language "C"
    staticruntime "on"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
    files{
        "include/glad/glad.h",
        "src/glad.c"
    }
    
    includedirs{
        "include"
    }
    
    filter "system:windows"
        systemversion "latest"
    
    filter "system:linux"
        pic "on"
        
    filter "configurations:Debug"
        runtime "Debug"
        optimize "Off"
        symbols "On"
        
    filter "configurations:Release"
        runtime "Release"
        optimize "On"
        symbols "Default"

    filter "configurations:Dist"
        runtime "Release"
        optimize "Speed"
        symbols "Off"

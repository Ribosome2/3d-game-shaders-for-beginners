
workspace "HelloPanda"
	architecture "x64"
   configurations { "Debug", "Release" }

project "PandaHelloWorld"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"

   files { "src/**.h", "src/**.c","src/**.cpp" }
   includedirs { "C:/Panda3D-1.10.10-x64/include" }
   libdirs { "C:\\Panda3D-1.10.10-x64\\lib" }
   links { 
      'libp3framework.lib',
      'libpanda.lib',
      'libpandaexpress.lib',
      'libp3dtool.lib',
      'libp3dtoolconfig.lib',
      'libp3direct.lib',
      'libpandaphysics.lib',
    }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      -- defines { "NDEBUG" } --这个文档专门说要去掉
      optimize "On"
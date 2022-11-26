project "ImGuizmo"
	kind "StaticLib"
	language "C++"
  	staticruntime "off"

  	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"ImCurveEdit.cpp",
		"ImCurveEdit.h",
		"ImGradient.cpp",
		"ImGradient.h",
		"ImZoomSlider.h",
		"ImSequencer.h",
		"ImSequencer.cpp",
		"ImGuizmo.h",
		"ImGuizmo.cpp"
	}
  
  links {
    "ImGui"
  }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
    symbols "off"

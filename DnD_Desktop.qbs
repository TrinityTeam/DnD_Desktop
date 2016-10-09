import qbs

CppApplication {
    Depends { name: "Qt"; submodules:["widgets", "qml", "quick"]}

    cpp.cxxLanguageVersion: "c++14"

    Group {
        name: "C++ Sources"
        prefix: "src/"
        files: [
            "geass_switcher.cpp",
            "geass_switcher.hpp",
            "main.cpp",
        ]
    }
    
    Group {
        name: "Data files"
        prefix: "data/"
        files: ["data.qrc"]
    }

    Group {
        fileTagsFilter: product.type
        qbs.install: true
    }
}

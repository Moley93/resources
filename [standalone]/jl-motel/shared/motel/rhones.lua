Config.Motel['rhones'] = {
    renew = '1w',
    label = "Rhones Motel",
    type = "shell",
    price = 2000,
    rent = {
        coords = vector4(61.31, -270.08, 48.19, 159.59)
    },
    motel = {
        -- Downstairs
        ["Rhones-rhones:1"] = {
            enter = vector3(63.51, -262.03, 52.35),
            locked = true,
            label = "Rhones 1",
            owned = false,
            logout = {
                name = "rhones:1:logout",
                coords = vec3(69.4, -250.25, 47.6),
                size = vec3(0.85, 0.85, 1.15),
                rotation = 342.0,
            },
            stash = {
                name = "rhones:1:stash",
                coords = vec3(68.75, -247.35, 47.5),
                size = vec3(1.55, 0.85, 0.95),
                rotation = 340.0,
            },
            outfit = {
                name = "rhones:1:outfit",
                coords = vec3(66.75, -252.2, 47.6),
                size = vec3(1.05, 1.6, 1.3),
                rotation = 339.5,
            },
        },
        ["Rhones-rhones:2"] = {
            enter = vector3(66.39, -256.08, 52.35),
            locked = true,
            label = "Rhones 2",
            owned = false,
            logout = {
                name = "rhones:2:logout",
                coords = vec3(74.5, -252.0, 47.6),
                size = vec3(0.85, 0.9, 1.25),
                rotation = 340.0,
            },
            stash = {
                name = "rhones:2:stash",
                coords = vec3(73.85, -249.2, 47.5),
                size = vec3(1.5, 0.8, 1.0),
                rotation = 340.0,
            },
            outfit = {
                name = "rhones:2:outfit",
                coords = vec3(71.8, -254.25, 47.5),
                size = vec3(1.1, 1.5, 1.0),
                rotation = 340.5,
            },
        },
        ["Rhones-rhones:3"] = {
            enter = vector3(67.25, -253.63, 52.35),
            locked = true,
            label = "Rhones 3",
            owned = false,
            logout = {
                name = "rhodes:3:logout",
                coords = vec3(79.6, -253.95, 47.45),
                size = vec3(0.7, 0.85, 0.9),
                rotation = 340.0,
            },
            stash = {
                name = "rhones:3:stash",
                coords = vec3(78.95, -251.05, 47.65),
                size = vec3(1.55, 0.8, 1.15),
                rotation = 340.0,
            },
            outfit = {
                name = "rhones:3:outfit",
                coords = vec3(77.0, -255.75, 47.6),
                size = vec3(1.0, 1.4, 1.2),
                rotation = 339.5,
            },
        },
        ["Rhones-rhones:4"] = {
            enter = vector3(64.83, -254.56, 48.19),
            locked = true,
            label = "Rhones 4",
            owned = false,
            logout = {
                name = "rhones:4:logout",
                coords = vec3(65.75, -260.3, 47.45),
                size = vec3(0.7, 0.8, 1.0),
                rotation = 340.0,
            },
            stash = {
                name = "rhones:4:stash",
                coords = vec3(63.8, -262.25, 47.55),
                size = vec3(1.5, 0.75, 1.1),
                rotation = 340.0,
            },
            outfit = {
                name = "rhones:4:outfit",
                coords = vec3(64.5, -258.4, 47.5),
                size = vec3(1.05, 1.65, 1.15),
                rotation = 340.0,
            },
        },
    }
}

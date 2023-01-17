-- THIS CONFIG JUST FOR TESTING
Config.Motel['davis'] = {
    label = "Davis Motel",
    rent = {
        coords = vector4(362.37, -1798.56, 29.1, 136.48)
    },
    type = "shell",
    price = 2000,
    motel = {
        ['Davis-davis:1'] = {
            enter = vector3(367.57, -1802.29, 29.07),
            locked = true,
            label = "Davis 14",
            owned = false,
            stash = {
                name = "davis:stash:1",
                coords = vec3(374.6, -1792.9, 29.0),
                size = vec3(1.5, 1.4, 1.0),
                rotation = 35.0,
            },
            outfit = {
                name = "davis:outfit:1",
                coords = vec3(373.0, -1797.0, 29.0),
                size = vec3(1, 1, 2.5),
                rotation = 39.0,
            },
            logout = {
                name = "davis:1:logout",
                coords = vec3(371.4, -1798.4, 29.0),
                size = vec3(0.4, 0.35, 1.0),
                rotation = 42.0,
            }
        },
        ['Davis-davis:2'] = {
            enter = vector3(379.19, -1812.03, 29.05),
            locked = true,
            label = "Davis 15",
            owned = false,
            stash = {
                name = "davis:stash:2",
                coords = vec3(369.5, -1800.25, 28.75),
                size = vec3(1.5, 1, 1.25),
                rotation = 50.5,
            },
            outfit = {
                name = "davis:outfit:2",
                coords = vec3(373.0, -1801.35, 29.0),
                size = vec3(1, 1, 3.3),
                rotation = 47.5,
            },
            logout = {
                name = "davis:logout:2",
                coords = vec3(374.55, -1803.2, 28.8),
                size = vec3(0.75, 0.75, 0.8),
                rotation = 320.0,
            }
        },
        ['Davis-davis:3'] = {
            enter = vector3(380.84, -1813.31, 29.05),
            locked = true,
            label = "Davis 16",
            owned = false,
            stash = {
                name = "davis:stash:3",
                coords = vec3(381.1, -1810.2, 29.0),
                size = vec3(1.5, 1.35, 1),
                rotation = 48.5,
            },
            outfit = {
                name = "davis:outfit:3",
                coords = vec3(380.5, -1807.5, 29.0),
                size = vec3(1.25, 1.25, 3.0),
                rotation = 47.5,
            },
            logout = {
                name = "davis:logout:3",
                coords = vec3(377.7, -1805.15, 28.7),
                size = vec3(0.75, 0.75, 1.0),
                rotation = 321.0,
            }
        },
        ['Davis-davis:4'] = {
            enter = vector3(372.23, -1791.4, 29.1),
            locked = true,
            label = "Davis 13",
            owned = false,
            stash = {
                name = "davis:stash:4",
                coords = vec3(382.6, -1811.2, 29.0),
                size = vec3(1.7, 1.2, 1.2),
                rotation = 50.5,
            },
            outfit = {
                name = "davis:outfit:4",
                coords = vec3(387.49, -1811.42, 29.23),
                size = vec3(1.25, 1.25, 3.0),
                rotation = 319.5,
            },
            logout = {
                name = "davis:logout:4",
                coords = vec3(388.1, -1815.05, 28.7),
                size = vec3(0.75, 0.8, 0.95),
                rotation = 40.0,
            }
        },
    }
}

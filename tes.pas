{
        "shell": true,
        "cmd": ["fpc", "${file_path}/${file_base_name}", "&&", "start", "cmd", "/c", "$file_base_name.exe", "&", "pause"],
        "selector": "source.pascal",
        "variants": [
            {
                "cmd": ["start", "cmd", "/c", "$file_base_name.exe & pause"],
                "name": "Run",
                "shell": true
            },
            {
                "cmd": ["fpc", "${file_path}/${file_base_name}"],
                "name": "Compile",
                "shell": true
            }
        ]
}
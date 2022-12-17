// using the superior language
//^^^ lies - lua > js :D
const fs = require('fs');

fs.readdir(GetResourcePath("gabz-doorlock")+'/sounds/', {withFileTypes: true}, (err, files) => {
    if(err) throw err;

    let fileNames = [];

    files.forEach(file => {

        if(!file.name.startsWith("_"))
            fileNames.push(file.name);
    });
    emit("cd_doorlock:GetSoundFiles", fileNames);

    return;
});

fs.readdir(GetResourcePath("gabz-doorlock")+'/JSON files/gabz_locations/', {withFileTypes: false}, (err, files) => {
    if(err) throw err;


    let fileNames = [];

    files.forEach(file => {
        let data = JSON.parse(fs.readFileSync(GetResourcePath("gabz-doorlock")+'/JSON files/gabz_locations/'+file, {encoding: 'utf8', flag:"r"}));

        fileNames.push({
            name: data.name,
            data: data.data,
            imported: data.imported
        });
    });

    emit("cd_doorlock:GetImportData", fileNames);

    return;
});
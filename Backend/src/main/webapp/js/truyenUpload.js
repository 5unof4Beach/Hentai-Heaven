

const truyenFiles = document.querySelector('#file');
const thongBao = document.querySelector('#mess');
const thongBaoTraVe = document.querySelector('#mess2');
//const upload = document.querySelector('#upload');
const upload = document.querySelector('#them');

truyenFiles.addEventListener('change', () => {
    uploadTruyen(truyenFiles.files[0]);
});

const uploadTruyen = (file) => {
    console.log(file.type === 'application/pdf');
    if (!(file.type === 'application/pdf')) {
        console.log('in ra thong bao');
        thongBao.textContent = 'lam on chon file pdf';
        truyenFiles.value = '';
        return;
    } else {
        thongBao.textContent = file.type;
    }

    thongBao.textContent = file.type;

    console.log(file);

    const options = {
        method: 'POST',
        headers: {
//            'Content-Type': 'application/pdf'
            'Content-Type': 'application/json'
        },
        body: file
    };

    console.log('chuan bi fetch');

    upload.addEventListener('click', () => {
        console.log('pressed');
        fetch('upload', options)
                .then(res => {
                    return res.json()
                })
                .then(data => {
                    thongBaoTraVe.textContent = data.mess;
                    console.log(data);
                })
    });

}
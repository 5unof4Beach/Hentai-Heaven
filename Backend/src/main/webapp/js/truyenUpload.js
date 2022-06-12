

const truyenFiles = document.querySelector('#file');
const anhFiles = document.querySelector('#file-thumb');
const thongBao = document.querySelector('#mess');
const thongBaoTraVe = document.querySelector('#mess2');
const thongBaoThumb = document.querySelector('#mess3');
const thongBaoTraVeThumb = document.querySelector('#mess4');
const upload = document.querySelector('#them');

truyenFiles.addEventListener('change', () => {
    uploadTruyen(truyenFiles.files[0]);
});
anhFiles.addEventListener('change', () => {
    uploadThumb(anhFiles.files[0]);
});

const uploadTruyen = (file) => {
    console.log(file.type === 'application/pdf');
    if (!(file.type === 'application/pdf')) {
        console.log('in ra thong bao');
        thongBao.textContent = 'lam on chon file pdf';
        truyenFiles.value = '';
        return;
    }

    thongBao.textContent = file.type;

    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/pdf'
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

const uploadThumb = (file) => {
    console.log(file.type === 'image/jpeg');
    if (!(file.type === 'image/jpeg')) {
        console.log('in ra thong bao');
        thongBaoThumb.textContent = 'lam on chon file jpg';
        anhFiles.value = '';
        return;
    }

    thongBaoThumb.textContent = file.type;


    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'image/jpeg'
        },
        body: file
    };

    console.log('chuan bi fetch anh thumb');

    upload.addEventListener('click', () => {
        console.log('pressed');
        fetch('uploadThumb', options)
                .then(res => {
                    return res.json()
                })
                .then(data => {
                    thongBaoTraVeThumb.textContent = data.mess;
                    console.log(data);
                })
    });

}
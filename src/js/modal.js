function openModal(){
    document.getElementById('modal-container').style.display = 'flex';
    setTimeout(() => {
        document.getElementById('modal-container').style.background = 'rgba(0, 0, 0, 0.3)';
        document.getElementById('modal').style.opacity = '1';
    }, 50);
}

function closeModal(){
    document.getElementById('modal').style.opacity = '0';
    document.getElementById('modal-container').style.background = 'transparent';
    setTimeout(() => {
        document.getElementById('modal-container').style.display = 'none';
    }, 300);
}
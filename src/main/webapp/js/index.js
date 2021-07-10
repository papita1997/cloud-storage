
var activeElemt = null;
function active(e) {
    activeElemt = e;
   let childs = e.parentNode.parentNode.childNodes;                                                      
   for (let index = 0; index < childs.length; index++) {
       const element = childs[index];
        if(element.nodeName === "DIV") {
            let rowchild = element.childNodes;
             for (let i = 0; i < rowchild.length; i++) {
                 const rowelemt = rowchild[i];
                 if(rowelemt.nodeName === "DIV") {
                     if(rowelemt.classList.contains('active')) {
                        rowelemt.classList.remove("active");
                     } 
                }
             }
        }
   }

   if(e.classList.contains('row-links-1')) {
        myDrive(e);
    } else if(e.classList.contains('row-links-2')) {
        newFolder(e);
    }else if(e.classList.contains('row-links-3')) {
        newFileUpload(e);
    }else if(e.classList.contains('row-links-4')) {
        newFolderUpload(e);
    }else if(e.classList.contains('row-links-5')) {
        myStorage(e);
    } 
    e.classList.add("active");
}

function myDrive(e) {
    const col2 = document.querySelector('.col-2');
    col2.style.display = 'block';
    col2.style.opacity = '1';
    const col3 = document.querySelector('.col-3');
    col3.style.display = 'none';
    col3.style.opacity = '0';
}

function newFolder(e) {
    e.style.opacity = '.3';
    document.body.style.backgroundColor = 'rgba(0,0,0,.4)';
    document.body.style.userSelect = 'none';
    document.querySelector('.mynav').style.opacity= '.2';
    const newFolderPopUp = document.querySelector('.new-folder-popup');
    newFolderPopUp.style.display='flex';
    newFolderPopUp.style.opacity='1';
    newFolderPopUp.style.width='410px';
}

function createNewFolder() {
	const folderName = $("#new-folder-name").val();
	$.post("NewFolderServlet",{data:folderName},function() {
		$('.col-2').load(location.href+" .col-2");
		closed();
	});
}

function newFileUpload(e){
   openFile();  
}

function newFolderUpload(e){
    openFile();  
 }

 function myStorage(e) {
    const col2 = document.querySelector('.col-2');
    col2.style.display = 'none';
    col2.style.opacity = '0';
    const col3 = document.querySelector('.col-3');
    col3.style.display = 'block';
    col3.style.opacity = '1';
}

function closed() {
    activeElemt.style.opacity = '1';
    document.body.style.backgroundColor = 'transparent';
    document.body.style.userSelect = 'text';
    document.querySelector('.mynav').style.opacity= '1';
    const newFolderPopUp = document.querySelector('.new-folder-popup');
    newFolderPopUp.style.display='none';
    newFolderPopUp.style.opacity='0';
    newFolderPopUp.style.width='0px';
}

function openFile(){
    var choose =$ (document.createElement('input'));
    choose.attr("type", "file");
    choose.trigger("click"); // opening dialog
    return false; // avoiding navigation
}

var updown = 0;

document.querySelector('.storage-event').addEventListener('click',() =>{
    $('.storage-event').removeAttr('id');
    if(updown==0){
        $('.storage-event').attr('id','storage-icon-up');
        updown = 1;
    } else {
        $('.storage-event').attr('id','storage-icon-down');
        updown = 0;
    }
});






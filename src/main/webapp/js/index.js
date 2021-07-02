/**
 * 
 */


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
    }
    e.classList.add("active");
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

function myDrive(e) {
    
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
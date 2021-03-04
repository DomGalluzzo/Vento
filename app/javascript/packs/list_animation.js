const animation = () => {
    const items = document.querySelectorAll(".group-item")
    document.addEventListener("readystatechange", () => {
        items.forEach(item => {
            item.style.marginLeft = "0px";
        })
    })
}
export{animation};
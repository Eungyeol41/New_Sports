document.addEventListener("DOMContentLoaded", () => {

    const main_nav = document.querySelector("nav#main_nav")

    main_nav.addEventListener("click", (e) => {
        let tagName = e.target.tagName

        if (tagName === "LI") {
            let menu = e.target.className
            let url = `${rootPath}`

            if (menu === "home") {
                url += "/";
            } else if (menu === "search") {
                url += "/search";
            } else if (menu === "community") {
                url += "/community";
            } else if (menu === "map") {
                url += "/map";
            } else if (menu === "login") {
                url += "/member/login";
            } else if (menu === "mypage") {
                url += "/member/mypage";
            }

            location.href = url;
        }
    })
})
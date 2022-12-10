window.addEventListener('message', function(event) {
    // document.getElementById("container").classList.add("fadeOut");
    document.getElementById("container").classList.remove("fadeIn");
    document.getElementById("container").classList.add("fadeOut");
    if (event.data.action == "show") {
        document.getElementById("text").innerHTML = event.data.text;
        document.getElementById("container").classList.remove("fadeOut");
        document.getElementById("container").classList.add("fadeIn");
    } else if (event.data.action == "hide") {
        document.getElementById("container").classList.remove("fadeIn");
        document.getElementById("container").classList.add("fadeOut");
    }
});
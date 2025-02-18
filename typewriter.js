document.addEventListener("DOMContentLoaded", function () {
    const textElement = document.querySelector(".intro");
    if (!textElement) return; // Prevents errors if .intro is missing

    const text = textElement.innerHTML.trim(); // Get the text content
    textElement.innerHTML = ""; // Clear the text to start typing effect

    let i = 0;
    function typeWriter() {
        if (i < text.length) {
            textElement.innerHTML += text.charAt(i);
            i++;
            setTimeout(typeWriter, 50); // Adjust speed here (lower = faster)
        }
    }
    typeWriter();
});

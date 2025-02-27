// Custom JavaScript for the OSSE Documentation Site

document.addEventListener('DOMContentLoaded', function () {
    // Add copy button to code blocks
    addCopyButtons();

    // Add version selector if available
    initVersionSelector();

    // Add scroll to top button
    addScrollToTopButton();
});

// Function to add copy buttons to code blocks
function addCopyButtons() {
    const codeBlocks = document.querySelectorAll('pre.highlight');

    codeBlocks.forEach(function (codeBlock) {
        if (!codeBlock.querySelector('.copy-button')) {
            const button = document.createElement('button');
            button.className = 'copy-button';
            button.textContent = 'Copy';

            button.addEventListener('click', function () {
                const code = codeBlock.querySelector('code').textContent;
                navigator.clipboard.writeText(code).then(function () {
                    button.textContent = 'Copied!';
                    setTimeout(function () {
                        button.textContent = 'Copy';
                    }, 2000);
                });
            });

            codeBlock.appendChild(button);
        }
    });
}

// Function to initialize version selector
function initVersionSelector() {
    const versionSelector = document.getElementById('version-selector');

    if (versionSelector) {
        versionSelector.addEventListener('change', function () {
            window.location.href = this.value;
        });
    }
}

// Function to add scroll to top button
function addScrollToTopButton() {
    const button = document.createElement('button');
    button.id = 'scroll-to-top';
    button.innerHTML = '&uarr;';
    button.title = 'Scroll to top';

    button.addEventListener('click', function () {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });

    document.body.appendChild(button);

    // Show/hide button based on scroll position
    window.addEventListener('scroll', function () {
        if (window.pageYOffset > 300) {
            button.classList.add('visible');
        } else {
            button.classList.remove('visible');
        }
    });
} 
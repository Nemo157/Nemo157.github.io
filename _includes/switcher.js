/* export onSwitcherClick */

if (!navigator.userAgent.match(/(iPad|iPhone|iPod)/)) {
  // Workaround buggy mobile safari hover handling
  document.body.classList.add('support-hover')
}

if (window.localStorage) {
  document.shade = window.localStorage.getItem('shade')
}

if (!document.shade) {
  document.shade = 'dark'
}

document.body.classList.add(document.shade)

window.onSwitcherClick = function () {
  document.shade = document.shade === 'dark' ? 'light' : 'dark'
  if (window.localStorage) {
    window.localStorage.setItem('shade', document.shade)
  }
  document.body.classList.toggle('dark')
  document.body.classList.toggle('light')
}

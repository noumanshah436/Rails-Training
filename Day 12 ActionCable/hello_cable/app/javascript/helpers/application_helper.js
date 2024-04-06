let errorClasses = [
  'text-red-500',
  'border-x',
  'border-b',
  'border-red-500',
  'ic-error',
  'bg-[#FBE8EF]',
  'dark-red-20'
]
const numberFormat = { 1: 'K', 2: 'M', 3: 'G' }

const addOrRemoveCssProp = (removeProp, element, prop) => {
  removeProp ? element.classList.remove(prop) : element.classList.add(prop)
}

const addAndRemoveCssProp = (element, propToAdd, propsToRemove) => {
  element.classList.remove(propsToRemove)
  element.classList.add(propToAdd)
}

const toggleCssProp = (element_1, element_2, prop) => {
  element_1.classList.add(prop)
  element_2.classList.remove(prop)
}

const errorDisplay = (inputTarget, outputTarget, targetIcon, icon) => {
  if (targetIcon) {
    addAndRemoveCssProp(targetIcon, `${icon}-red`, icon)
  }
  outputTarget.classList.add(...errorClasses)
  inputTarget.classList.add('text-red-500', 'border', 'border-red-500')
  inputTarget.tagName === 'SELECT' && inputTarget.parentElement.classList.remove('content-black')
}

const errorRemove = (inputTarget, outputTarget, targetIcon, icon) => {
  if (targetIcon) {
    addAndRemoveCssProp(targetIcon, icon, `${icon}-red`)
  }
  outputTarget.textContent = ''
  outputTarget.classList.remove(...errorClasses)
  inputTarget.classList.remove('text-red-500', 'border', 'border-red-500')
  inputTarget.tagName === 'SELECT' && inputTarget.parentElement.classList.add('content-black')
}

const capitalizeFirstLetter = (string) => {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

const setCookie = (name, value, days = 365) => {
  let expires = ""
  if (days) {
    let date = new Date()
    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000))
    expires = "; expires=" + date.toUTCString()
  }
  document.cookie = name + "=" + (value || "") + expires + "; path=/"
}

const setAttributes = (el, attrs) => {
  for (var key in attrs) {
    el.setAttribute(key, attrs[key]);
  }
}

const createElement = (data) => {
  let element = document.createElement(data.element)
  if (data.class) {
    element.classList.add(...data.class)
    delete data.class
  }
  if (data.style) {
    for( key in data.style ) {
      element.style[key] = data.style[key]
    }
    delete data.style
  }
  if (data.html) {
    element.innerHTML = data.html
    delete data.html
  }
  delete data.element
  setAttributes(element, data)
  return element
}

const createElementFromTemplate = (template) => {
  return createElement({
    'element': 'template',
    'html': template
  }).content
}

const formatLargeNumber = (number, power = 0) => {
  const value = number / (1000.0 ** power)
  if (value < 1000) {
    return [value, power]
  }
  return formatLargeNumber(number, power + 1)
}

const getStyleValue = (element, style) => {
  return parseInt(window.getComputedStyle(element, null).getPropertyValue(style).replace('px', ''))
}

const fetchResources = (url) => {
  return fetch(url, {
    headers: {
      Accept: "text/vnd.turbo-stream.html"
    }
  })
  .then(response => response.text())
  .then(html => Turbo.renderStreamMessage(html))
}

export {
  addOrRemoveCssProp,
  addAndRemoveCssProp,
  toggleCssProp,
  errorDisplay,
  errorRemove,
  capitalizeFirstLetter,
  setCookie,
  setAttributes,
  createElement,
  createElementFromTemplate,
  formatLargeNumber,
  getStyleValue,
  numberFormat,
  errorClasses,
  fetchResources
}

const classRadioButtons = document.querySelectorAll('.class-radio-button');
const genderRadioButtons = document.querySelectorAll('.gender-radio-button');
const warrior_male = document.getElementById('warrior_male');
const mage_male = document.getElementById('mage_male');
const archer_male = document.getElementById('archer_male');
const warrior_female = document.getElementById('warrior_female');
const mage_female = document.getElementById('mage_female');
const archer_female = document.getElementById('archer_female');
const info_warrior = document.getElementById('class-info-warrior');
const info_mage = document.getElementById('class-info-mage');
const info_archer = document.getElementById('class-info-archer');

info_warrior.style.display = "block";

let selectedClass = document.querySelector('.class-radio-button:checked').value;
let selectedGender = document.querySelector('.gender-radio-button:checked').value;

const updateImages = () => {
  warrior_male.style.display = 'none'
  mage_male.style.display = 'none'
  archer_male.style.display = 'none'
  warrior_female.style.display = 'none'
  mage_female.style.display = 'none'
  archer_female.style.display = 'none'
  info_warrior.style.display = 'none'
  info_mage.style.display = 'none'
  info_archer.style.display = 'none'
  
  const element = document.getElementById(selectedClass + "_" + selectedGender)
  const stat = document.getElementById('class-info-' + selectedClass);
  
  element.style.display = "grid";
  stat.style.display = "block";
};

classRadioButtons.forEach(button => {
  button.addEventListener('change', function () {
    selectedClass = this.value;
    updateImages();
  });
});

genderRadioButtons.forEach(button => {
  button.addEventListener('change', function () {
    selectedGender = this.value;
    updateImages();
  });
});

const imageSelectors = document.querySelectorAll('.image-selector');
const selectedCharacterImage = document.getElementById('selected-character-image');
const selectedImagePathInput = document.getElementById('selected-image-path');

imageSelectors.forEach(selector => {
  selector.addEventListener('click', function () {
    const imagePath = this.getAttribute('data-image-path');
    selectedCharacterImage.src = imagePath;
    selectedCharacterImage.style.display = "block";
    selectedImagePathInput.value = imagePath;

    // Visual feedback for the currently selected image
    imageSelectors.forEach(sel => sel.classList.remove('selected'));
    this.classList.add('selected');
  });
});

// Initial call to display the default selection images
// updateImages();

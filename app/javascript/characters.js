document.addEventListener('DOMContentLoaded', function() {
  const classRadioButtons = document.querySelectorAll('.class-radio-button');
  const genderRadioButtons = document.querySelectorAll('.gender-radio-button');
  let selectedClass = document.querySelector('.class-radio-button:checked').getAttribute('data-class-name');
  let selectedGender = document.querySelector('.gender-radio-button:checked').value;

  const updateImages = () => {
    // Hide all character images first
    document.querySelectorAll('.character-image').forEach(img => img.style.display = 'none');
    // Then, show only the images corresponding to the selected class and gender
    document.querySelectorAll(`.${selectedClass}-image.${selectedGender}`).forEach(img => img.style.display = 'block');
  };

  classRadioButtons.forEach(button => {
    button.addEventListener('change', function() {
      selectedClass = this.getAttribute('data-class-name');
      updateImages();
    });
  });

  genderRadioButtons.forEach(button => {
    button.addEventListener('change', function() {
      selectedGender = this.value;
      updateImages();
    });
  });

  const imageSelectors = document.querySelectorAll('.image-selector');
  const selectedCharacterImage = document.getElementById('selected-character-image');
  const selectedImagePathInput = document.getElementById('selected-image-path');

  imageSelectors.forEach(selector => {
    selector.addEventListener('click', function() {
      const imagePath = this.getAttribute('data-image-path');
      selectedCharacterImage.src = imagePath;
      selectedCharacterImage.classList.remove('hidden');
      selectedImagePathInput.value = imagePath;

      // Visual feedback for the currently selected image
      imageSelectors.forEach(sel => sel.classList.remove('selected'));
      this.classList.add('selected');
    });
  });

  // Initial call to display the default selection images
  updateImages();
});

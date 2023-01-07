import * as FilePond from 'filepond';
import FilePondPluginImagePreview from 'filepond-plugin-image-preview'; 
import FilePondPluginFileValidateType from 'filepond-plugin-file-validate-type';

FilePond.registerPlugin(
  FilePondPluginImagePreview,
  FilePondPluginFileValidateType
);

const inputElement = document.querySelector('#post-images');

const pond = FilePond.create(inputElement, {
  credits: {},
  storeAsFile: true,
  allowMultiple: true,
  allowReorder: true,
  acceptedFileTypes: ['image/*']
});
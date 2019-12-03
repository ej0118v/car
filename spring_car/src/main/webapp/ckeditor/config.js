/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

var myToolbar =  
               [     
                   { name: 'document', items : [ 'Source','-','DocProps','Preview','Print','-','Templates' ]  },
                   { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
                   { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','Scayt' ] },
                   { name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','Iframe' ] },
                           '/',
                   { name: 'styles', items : [ 'Font','FontSize' ] },
                   { name: 'colors', items : [ 'TextColor','BGColor' ] },
                   { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },
                   { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
                   { name: 'links', items : [ 'Link','Unlink' ] },
                   { name: 'tools', items : [ 'Maximize','-','About' ] }
               ];
 
CKEDITOR.editorConfig = function( config )
{
// Define changes to default configuration here. For example:
// config.language = 'fr';
// config.uiColor = '#AADC6E';
config.height = 500;
config.toolbar = myToolbar;
//config.uiColor = '#9AB8F3';
config.uiColor = '#D3D3D3';
config.enterMode = CKEDITOR.ENTER_BR; //엔터키 태그 1:<p>, 2:<br>, 3:<div>
config.font_defaultLabel = '굴림체'; //기본글씨
config.font_names = '굴림체/Gulim;돋움체/Dotum;맑은 고딕/맑은 고딕;';
 
config.filebrowserBrowseUrl = '../ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = '../ckfinder/ckfinder.html?type=Images';
    config.filebrowserFlashBrowseUrl = '../ckfinder/ckfinder.html?type=Flash';
    config.filebrowserUploadUrl = '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';
    config.filebrowserImageUploadUrl = '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';
    config.filebrowserFlashUploadUrl = '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'; 









//CKEDITOR.editorConfig = function( config ) {
//	// Define changes to default configuration here.
//	// For complete reference see:
//	// https://ckeditor.com/docs/ckeditor4/latest/api/CKEDITOR_config.html
//
//	// The toolbar groups arrangement, optimized for two toolbar rows.
//	config.toolbarGroups = [
//		{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
//		{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
//		{ name: 'links' },
//		{ name: 'insert' },
//		{ name: 'forms' },
//		{ name: 'tools' },
//		{ name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
//		{ name: 'others' },
//		'/',
//		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
//		{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
//		{ name: 'styles' },
//		{ name: 'colors' },
//		{ name: 'about' }
//	];
//
//	// Remove some buttons provided by the standard plugins, which are
//	// not needed in the Standard(s) toolbar.
//	config.removeButtons = 'Underline,Subscript,Superscript';
//
//	// Set the most common block elements.
//	config.format_tags = 'p;h1;h2;h3;pre';
//
//	// Simplify the dialog windows.
//	config.removeDialogTabs = 'image:advanced;link:advanced';
};

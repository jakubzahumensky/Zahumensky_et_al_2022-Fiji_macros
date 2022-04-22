var ext1 = "czi";
var ext2 = "oif";

setBatchMode(true); // starts batch mode

	Dialog.create("Batch export"); // Creates dialog window with the name "Batch export"
	Dialog.addString("Directory:", ""); // Asks for directory to be processed. Copy paste your complete path here
	Dialog.addNumber("Channel:", 1); // Asks which channel should be exported. 1 as default.
    Dialog.show();
	dir = Dialog.getString();
	ch = Dialog.getNumber();

/*
// alternative (point-and-click) version of the dialog to ask to directory
dir = getDirectory("Choose a Directory");
Dialog.create("Select channel"); // Creates dialog window with the name "Select channel"
Dialog.addString("Channel:", "1"); // Asks which channel should be exported. 1 as default.
Dialog.show();
ch = Dialog.getString();
      */
      
// calling function called “processFolder”
processFolder(dir);

// definition of "processFolder" function
// makes a list of content of specified folder and goes through it one by one.
// If list item is a folder, it goes inside and does the same. If list item is an image in either CZI or OIF format, it runs processFile() on that image.
function processFolder(dir) {
   list = getFileList(dir);
   for (i=0; i<list.length; i++) {
      showProgress(i+1, list.length);
      if (endsWith(list[i], "/"))
         processFolder(""+dir+list[i]);
      else {
		 q = dir+list[i];
         processFile(q);
      }
   }
}

// definition of "processFile" function
function processFile(q) {
	if (endsWith(q, "."+ext1)||endsWith(q, "."+ext2)) { //remove extension from filename
    	dirExp = replace(dir, "data", "export");
		File.makeDirectory(dirExp); // create "export" directory
        run("Bio-Formats Windowless Importer", "open=[" + q + "]"); // open image
        run("Duplicate...", "duplicate channels=" + ch); // duplicate specified channel as new image
/*
		setMinAndMax(500, 5000);
		run("Apply LUT");
*/
		saveAs("TIFF",dirExp+list[i]); // save duplicate as TIFF
       	close("*"); // close all open images
	}
}

setBatchMode(false); // ends batch mode
waitForUser("Finito!"); // tells user that the macro has finished successfully
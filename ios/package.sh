rm -rf ios-package
mkdir ios-package
svn export ../Emgu.CV ios-package/Emgu.CV
rm -rf ios-package/Emgu.CV/Android 
cp -rf ../Emgu.CV/PInvoke/MonoTouch/armv7 ios-package/Emgu.CV/PInvoke/MonoTouch/
cp -rf ../Emgu.CV/PInvoke/MonoTouch/i386 ios-package/Emgu.CV/PInvoke/MonoTouch/
svn export ../Emgu.CV.ML ios-package/Emgu.CV.ML 
svn export ../Emgu.CV.OCR ios-package/Emgu.CV.OCR 
svn export ../Emgu.CV.Stitching ios-package/Emgu.CV.Stitching
svn export ../Emgu.Util ios-package/Emgu.Util
mkdir ios-package/Emgu.CV.Example
svn export ../Emgu.CV.Example/MonoTouch ios-package/Emgu.CV.Example/MonoTouch
mkdir -p ios-package/Solution/VS2010/
cp ../Solution/VS2010/Emgu.CV.MonoTouch.sln ios-package/Solution/VS2010
cp ../CommonAssemblyInfo.cs ios-package
find ./ios-package -type f -name CMakeList* -exec rm '{}' \;
find ./ios-package -type f -name *Android* -exec rm '{}' \;

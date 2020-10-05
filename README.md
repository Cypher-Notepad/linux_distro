# linux_distro

## v3.0
1. Run the below to create deb package with executable JAR
```
javapackager -deploy -native deb -srcdir ./ -srcfiles Cypher-Notepad-3.0-release.jar -outdir ./ -outfile cypher-notepad-3.0-linux.deb -appclass org.eclipse.jdt.internal.jarinjarloader.JarRsrcLoader -description "The Text Editor that provides hybrid encryption" -name "Cypher Notepad" -title "A Java-based, plain-text editor with hybrid encryption." -vendor "Dong-Geon Lee" -BappVersion=3.0 -Bicon="/home/matth1996/Desktop/cn3.0/resources/encrypted_black_crop_bg.png" -Bcategory=Utility -BlicenseType="Free"
```

2. Config files in DEBIAN/

3. Re-create deb package with updated config.
```
dpkg-deb --build cypher-notepad-3.0 cypher-notepad-3.0-linux.deb 
``` 

4. convert deb package into rpm package for Redhat system.
```
sudo alien -r --scripts cypher-notepad-3.0-linux.deb
```

## v2.1
1. Run the below to create deb package with executable JAR
```
javapackager -deploy -native deb -srcdir ./ -srcfiles Cypher-Notepad_2.1_release.jar -outdir dist -outfile test -appclass org.eclipse.jdt.internal.jarinjarloader.JarRsrcLoader -description "The Text Editor that provides hybrid encryption" -name "Cypher Notepad" -title "Edit text files with hybrid encryption" -vendor VENDOR -BappVersion=2.1 -Bicon="/home/matth1996/Cypher-Notepad/src/encrypted_black_crop_bg.png"
```

2. Config files in DEBIAN/

3. Re-create deb package with updated config.
```
dpkg-deb --build cypher-notepad-2.1 cypher-notepad-2.1-linux.deb 
``` 

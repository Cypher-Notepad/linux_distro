# linux_distro

1. Run the below to create deb package with executable JAR
```
javapackager -deploy -native deb -srcdir ./ -srcfiles Cypher-Notepad_2.1_release.jar -outdir dist -outfile test -appclass org.eclipse.jdt.internal.jarinjarloader.JarRsrcLoader -description "The Text Editor that provides hybrid encryption" -name "Cypher Notepad" -title "Edit text files with hybrid encryption" -vendor VENDOR -BappVersion=2.1 -Bicon="/home/matth1996/Cypher-Notepad/src/encrypted_black_crop_bg.png"
```

2. Config files in DEBIAN/

3. Re-create deb package with updated config.
```
dpkg-deb --build cypher-notepad-2.1
``` 

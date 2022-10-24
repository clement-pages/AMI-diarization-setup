#!/bin/sh

if [ -z "$1" ]
then
      DLFOLDER="amicorpus"
else
      DLFOLDER="$1/amicorpus"
fi


wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2002a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2002a/audio/ES2002a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2003a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2003a/audio/ES2003a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2004a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2004a/audio/ES2004a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2005a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2005a/audio/ES2005a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2006a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2006a/audio/ES2006a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2007a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2007a/audio/ES2007a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2008a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2008a/audio/ES2008a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2009a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2009a/audio/ES2009a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2010a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2010a/audio/ES2010a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2011a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2011a/audio/ES2011a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2012a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2012a/audio/ES2012a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2013a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2013a/audio/ES2013a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2014a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2014a/audio/ES2014a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2015a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2015a/audio/ES2015a.Array1-01.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2016a/audio https://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2016a/audio/ES2016a.Array1-01.wav

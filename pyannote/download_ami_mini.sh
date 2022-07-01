#!/bin/sh

if [ -z "$1" ]
then
      DLFOLDER="amicorpus"
else
      DLFOLDER="$1/amicorpus"
fi

wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2002a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2002a/audio/ES2002a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2003a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2003a/audio/ES2003a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2004a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2004a/audio/ES2004a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2005a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2005a/audio/ES2005a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2006a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2006a/audio/ES2006a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2007a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2007a/audio/ES2007a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2008a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2008a/audio/ES2008a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2009a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2009a/audio/ES2009a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2010a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2010a/audio/ES2010a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2011a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2011a/audio/ES2011a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2012a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2012a/audio/ES2012a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2013a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2013a/audio/ES2013a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2014a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2014a/audio/ES2014a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2015a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2015a/audio/ES2015a.Mix-Headset.wav
wget --no-verbose --show-progress --continue -P $DLFOLDER/ES2016a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2016a/audio/ES2016a.Mix-Headset.wav

#!/bin/sh

if [ -z "$1" ]
then
      DLFOLDER="amicorpus"
else
      DLFOLDER="$1/amicorpus"
fi

wget --continue -P $DLFOLDER/ES2002a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2002a/audio/ES2002a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2003a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2003a/audio/ES2003a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2004a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2004a/audio/ES2004a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2005a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2005a/audio/ES2005a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2006a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2006a/audio/ES2006a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2007a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2007a/audio/ES2007a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2008a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2008a/audio/ES2008a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2009a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2009a/audio/ES2009a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2010a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2010a/audio/ES2010a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2011a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2011a/audio/ES2011a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2012a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2012a/audio/ES2012a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2013a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2013a/audio/ES2013a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2014a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2014a/audio/ES2014a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2015a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2015a/audio/ES2015a.Mix-Headset.wav
wget --continue -P $DLFOLDER/ES2016a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror/amicorpus/ES2016a/audio/ES2016a.Mix-Headset.wav

function fix_wav(){
python - $1 <<END
import wave
import argparse
import io
def normalize_wav(input_file, output_file):
    with wave.open(input_file, "rb") as r_wav, wave.open(output_file, "wb") as w_wav:
        w_wav.setparams(r_wav.getparams())
        w_wav.writeframes(r_wav.readframes(r_wav.getnframes()))
if __name__ == "__main__":
    argparser = argparse.ArgumentParser()
    argparser.add_argument("input", type=str, help="path to file to overwrite")
    args = argparser.parse_args()
    # writing the new wav into a buffer, to prevent overwriting the original
    # file
    buff = io.BytesIO()
    normalize_wav(args.input, buff)
    with open(args.input, "wb") as wav_file:
        wav_file.write(buff.getvalue())
    try:
        from scipy.io.wavfile import read
    except ImportError:
        print("Scipy not installed. "
              "Could not test if the file %s was properly fixed to work "
              "with the scipy wave read function" % args.input)
    else:
        # test-opening the file with scipy
        rate, data = read(args.input)
        print("%s has been properly reformated" % args.input)
END
}

echo "Fixing wav files with invalid chunks"

fix_wav $DLFOLDER/IS1004d/audio/IS1004d.Mix-Headset.wav
fix_wav $DLFOLDER/IS1006c/audio/IS1006c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1008d/audio/IS1008d.Mix-Headset.wav
fix_wav $DLFOLDER/IS1007a/audio/IS1007a.Mix-Headset.wav
fix_wav $DLFOLDER/IS1008c/audio/IS1008c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1005a/audio/IS1005a.Mix-Headset.wav
fix_wav $DLFOLDER/IS1008b/audio/IS1008b.Mix-Headset.wav
fix_wav $DLFOLDER/IS1009b/audio/IS1009b.Mix-Headset.wav
fix_wav $DLFOLDER/IS1002c/audio/IS1002c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1004b/audio/IS1004b.Mix-Headset.wav
fix_wav $DLFOLDER/IS1008a/audio/IS1008a.Mix-Headset.wav
fix_wav $DLFOLDER/IS1004a/audio/IS1004a.Mix-Headset.wav
fix_wav $DLFOLDER/IS1005b/audio/IS1005b.Mix-Headset.wav
fix_wav $DLFOLDER/IS1007c/audio/IS1007c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1004c/audio/IS1004c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1009c/audio/IS1009c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1003c/audio/IS1003c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1009a/audio/IS1009a.Mix-Headset.wav
fix_wav $DLFOLDER/IS1009d/audio/IS1009d.Mix-Headset.wav
fix_wav $DLFOLDER/IS1006a/audio/IS1006a.Mix-Headset.wav
fix_wav $DLFOLDER/IS1005c/audio/IS1005c.Mix-Headset.wav
fix_wav $DLFOLDER/IS1006d/audio/IS1006d.Mix-Headset.wav
fix_wav $DLFOLDER/IS1003d/audio/IS1003d.Mix-Headset.wav
fix_wav $DLFOLDER/IS1007b/audio/IS1007b.Mix-Headset.wav

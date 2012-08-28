#!/bin/sh

(
cd debian/tmp-libc/usr/lib/gconv/
mkdir tmp

COMMON="CP125[0123456].so UNICODE.so UTF-16.so UTF-32.so ISO8859-[12789].so ISO8859-15.so KOI8-R.so"
ALL="ISO646.so"
CN="BIG5.so BIG5HKSCS.so EUC-CN.so EUC-TW.so libCNS.so GB18030.so GBBIG5.so GBGBK.so GBK.so ISO-2022-CN-EXT.so ISO-2022-CN.so libGB.so libISOIR165.so"
JP="CP932.so EUC-JISX0213.so EUC-JP-MS.so EUC-JP.so IBM1390.so IBM1399.so IBM290.so IBM930.so IBM932.so IBM939.so IBM943.so ISO-2022-JP-3.so ISO-2022-JP.so SHIFT_JISX0213.so SJIS.so libJIS.so libJISX0213.so libGB.so libCNS.so libKSC.so"
KR="EUC-KR.so ISO-2022-KR.so JOHAB.so libKSC.so"

EXTRA="GSM.so TIS-620.so KOI8-U.so VISCII.so"

if [ z"i386" = z`dpkg-architecture -qDEB_HOST_ARCH` ]; then
echo "Adding CP437 codepage for i386"
EXTRA="IBM437.so $EXTRA"
fi

CONVS="$COMMON $ALL $CN $JP $KR $EXTRA"

cp $CONVS tmp
rm *so
mv tmp/* .
rm -rf tmp

../../../../local/osso/strip-gconv.pl < gconv-modules > gconv-modules.small
mv gconv-modules.small gconv-modules
)


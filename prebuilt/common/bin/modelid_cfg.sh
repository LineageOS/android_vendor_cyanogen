#!/sbin/sh
#

# Remove KINETO on incorrect models.
#
# VISION   TMUS MODELID PC1010000
# MAHIMAHI TMUS MODELID PB9910000
# GLACIER  TMUS MODELID PD1510000
# Espresso TMUS MODELID PB6510000
#

kineto=/system/app/MS-HTCVISION-KNT20-02.apk
rm_kineto=y

dmesg|grep androidboot.mid=PC1010000
if [ $? = 0 ]; 
    then
       rm_kineto=n
fi

dmesg|grep androidboot.mid=PB9910000
if [ $? = 0 ]; 
    then
       rm_kineto=n
fi

dmesg|grep androidboot.mid=PD1510000
if [ $? = 0 ]; 
    then
       rm_kineto=n
fi

dmesg|grep androidboot.mid=PB6510000
if [ $? = 0 ]; 
    then
       rm_kineto=n
fi

if [ "$rm_kineto" = "y" ];
    then
       if [ -f $kineto ];
          then
             rm -f /system/app/MS-HTCVISION-KNT20-02.apk
             rm -f /system/lib/libkineto.so
             rm -f /system/lib/libganril.so
             rm -f /system/lib/librilswitch.so
             sed 's/librilswitch.so/libhtc_ril.so/' /system/build.prop > /tmp/build.tmp
             sed '/rilswitch/d' /tmp/build.tmp > /system/build.prop
             chmod 644 /system/build.prop
             rm /tmp/build*
       fi
fi

#
# Check for spade; if NAM model update DSP and GPS config
#

dmesg | grep spade
if [ $? = 0 ];
   then 
      dmesg | grep androidboot.mid=PD9812000
      if [ $? = 0 ]; 
         then
            mv /system/etc/nam/*MCLK.txt /system/etc/soundimage/
            mv /system/etc/nam/CodecDSPID.txt /system/etc
            mv /system/etc/nam/gps.conf /system/etc
      fi
    rm -R /system/etc/nam
fi






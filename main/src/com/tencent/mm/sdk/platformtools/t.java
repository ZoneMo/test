package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

public final class t
{
  private aj gdb = null;
  private int gdc = -1;
  private boolean gdd = true;

  public t(byte[] paramArrayOfByte)
  {
    this.gdb.cm(paramArrayOfByte);
  }

  private static String b(byte paramByte)
  {
    String str = Integer.toHexString(paramByte & 0xFF);
    if (str.length() == 1)
      str = "0" + str;
    return "" + str.toUpperCase();
  }

  private void lD(int paramInt)
  {
    int i = this.gdb.azo().position();
    this.gdb.azo().position(i + paramInt);
  }

  public final int ayV()
  {
    label1031: label1040: 
    while (true)
    {
      int i5;
      int i6;
      String str;
      int i12;
      int i11;
      int i13;
      int i15;
      try
      {
        byte b1 = this.gdb.azo().get();
        byte b2 = this.gdb.azo().get();
        if ((!b(b1).equals("FF")) || (!b(b2).equals("D8")))
          break label983;
        i = 1;
        if (i != 0)
          break label989;
        aa.w("MicroMsg.JpegTools", "this is not jpeg or no exif data!!!");
        return -1;
        byte b3 = this.gdb.azo().get();
        byte b4 = this.gdb.azo().get();
        this.gdb.azo().get();
        int k = this.gdb.azo().get();
        int m;
        if (!b(b3).equals("FF"))
        {
          m = -1;
          if (m < 0)
          {
            aa.w("MicroMsg.JpegTools", "datalen is error ");
            return -1;
          }
        }
        else
        {
          if ((b(b3).equals("FF")) && (b(b4).equals("E1")))
          {
            m = -2 + (k & 0xFF);
            continue;
          }
          if ((b(b3).equals("FF")) && (b(b4).equals("D9")))
          {
            m = -1;
            continue;
          }
          int i16 = -2 + (k + this.gdb.getOffset());
          this.gdb.azo().position(i16);
          j++;
          if (j <= 100)
            continue;
          aa.e("MicroMsg.JpegTools", "error while!");
          m = -1;
          continue;
        }
        int n = this.gdb.azo().get();
        int i1 = this.gdb.azo().get();
        int i2 = this.gdb.azo().get();
        int i3 = this.gdb.azo().get();
        if (!((char)n + (char)i1 + (char)i2 + (char)i3).equals("Exif"))
          break label995;
        i4 = 1;
        if (i4 == 0)
        {
          aa.w("MicroMsg.JpegTools", "checkExifTag is error");
          return -1;
        }
        lD(2);
        i5 = this.gdb.azo().get();
        i6 = this.gdb.azo().get();
        if (((char)i5 != 'M') || ((char)i6 != 'M'))
          break label1001;
        str = "MM";
        if ((!str.equals("MM")) && (!str.equals("II")))
        {
          aa.w("MicroMsg.JpegTools", "byteOrder  is error " + str);
          return -1;
        }
        this.gdd = str.equals("MM");
        boolean bool1 = this.gdd;
        byte b5 = this.gdb.azo().get();
        byte b6 = this.gdb.azo().get();
        int i7;
        if ((bool1) && (b(b5).equals("00")) && (b(b6).equals("2A")))
        {
          i7 = 1;
          if (i7 == 0)
          {
            aa.w("MicroMsg.JpegTools", "checkTiffTag  is error ");
            return -1;
          }
        }
        else
        {
          if ((b(b5).equals("2A")) && (b(b6).equals("00")))
          {
            i7 = 1;
            continue;
          }
          aa.w("MicroMsg.JpegTools", "checkTiffTag: " + b(b5) + " " + b(b6));
          i7 = 0;
          continue;
        }
        lD(4);
        int i8 = this.gdb.azo().get();
        int i9 = this.gdb.azo().get();
        int i10 = i8 & 0xFF;
        if (!this.gdd)
          break label1031;
        i10 = i9 & 0xFF;
        break label1031;
        byte b7;
        byte b8;
        if ((i12 < i10) && (i12 < 255))
        {
          b7 = this.gdb.azo().get();
          b8 = this.gdb.azo().get();
          if ((this.gdd) && (b(b7).equals("01")) && (b(b8).equals("12")))
          {
            i11 = 1;
            lD(2);
            lD(4);
            if (i11 == 0)
              continue;
            boolean bool2 = this.gdd;
            i13 = this.gdb.azo().get();
            int i14 = this.gdb.azo().get();
            lD(2);
            if (!bool2)
              break label1040;
            i15 = i14 & 0xFF;
            this.gdc = i15;
          }
        }
        else
        {
          aa.d("MicroMsg.JpegTools", "orei " + this.gdc);
          if (this.gdc == -1);
        }
        switch (this.gdc)
        {
        case 2:
        case 4:
        case 5:
        case 7:
        default:
          return -1;
          if ((this.gdd) || (!b(b7).equals("12")) || (!b(b8).equals("01")))
            continue;
          i11 = 1;
          continue;
          lD(4);
          i12++;
          continue;
        case 6:
        case 3:
        case 8:
        case 1:
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.JpegTools", "parser jpeg error");
        return -1;
      }
      return 90;
      return 180;
      return 270;
      return 0;
      label983: int i = 0;
      continue;
      label989: int j = 0;
      continue;
      label995: int i4 = 0;
      continue;
      label1001: if (((char)i5 == 'I') && ((char)i6 == 'I'))
      {
        str = "II";
      }
      else
      {
        str = "";
        continue;
        i11 = 0;
        i12 = 0;
        continue;
        i15 = i13 & 0xFF;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.t
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.sdk.platformtools;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

public final class o extends Thread
{
  private int bgColor;
  private int delay = 0;
  private byte[] efK = null;
  private boolean gcA;
  private int gcB;
  private int gcC;
  private int gcD;
  private int gcE;
  private int gcF;
  private int gcG;
  private int gcH;
  private int gcI;
  private int gcJ;
  private byte[] gcK = new byte[256];
  private int gcL = 0;
  private int gcM = 0;
  private int gcN = 0;
  private boolean gcO = false;
  private int gcP;
  private short[] gcQ;
  private byte[] gcR;
  private byte[] gcS;
  private byte[] gcT;
  private Vector gcU;
  private Vector gcV;
  private boolean gcs;
  private int gct;
  private int[] gcu;
  private int[] gcv;
  private int[] gcw;
  private int gcx;
  private int gcy;
  private boolean gcz;
  public int height;
  private InputStream in;
  private int status;
  public int width;

  public o(byte[] paramArrayOfByte)
  {
    this.efK = paramArrayOfByte;
  }

  private boolean ayL()
  {
    return this.status != 0;
  }

  private void ayM()
  {
    String str = "";
    for (int i = 0; i < 6; i++)
      str = str + (char)ayS();
    if (!str.startsWith("GIF"))
      this.status = -1;
    do
    {
      return;
      this.width = ayT();
      this.height = ayT();
      int j = ayS();
      int k = j & 0x80;
      boolean bool = false;
      if (k != 0)
        bool = true;
      this.gcs = bool;
      this.gct = (2 << (j & 0x7));
      this.gcx = ayS();
      ayS();
    }
    while ((!this.gcs) || (ayL()));
    this.gcu = lC(this.gct);
    this.bgColor = this.gcu[this.gcx];
  }

  private void ayN()
  {
    boolean bool;
    do
    {
      p localp = new p();
      bool = b(localp);
      if (localp.ckx != null)
        this.gcU.add(localp);
    }
    while (!bool);
  }

  private void ayO()
  {
    int i = this.gcE * this.gcF;
    if ((this.gcT == null) || (this.gcT.length < i))
      this.gcT = new byte[i];
    if (this.gcQ == null)
      this.gcQ = new short[4096];
    if (this.gcR == null)
      this.gcR = new byte[4096];
    if (this.gcS == null)
      this.gcS = new byte[4097];
    int j = ayS();
    int k = 1 << j;
    int m = k + 1;
    int n = k + 2;
    int i1 = -1;
    int i2 = j + 1;
    int i3 = -1 + (1 << i2);
    for (int i4 = 0; i4 < k; i4++)
    {
      this.gcQ[i4] = 0;
      this.gcR[i4] = ((byte)i4);
    }
    int i5 = 0;
    int i6 = 0;
    int i7 = 0;
    int i8 = 0;
    int i9 = 0;
    int i10 = 0;
    int i11 = 0;
    int i12 = 0;
    int i25;
    int i26;
    int i27;
    label382: int i21;
    int i19;
    int i20;
    int i14;
    int i15;
    int i16;
    int i17;
    int i18;
    while (i9 < i)
    {
      if (i6 != 0)
        break label661;
      if (i11 < i2)
      {
        if (i10 == 0)
        {
          i10 = ayU();
          if (i10 > 0)
            i12 = 0;
        }
        else
        {
          i8 += ((0xFF & this.gcK[i12]) << i11);
          i11 += 8;
          i12++;
          i10--;
        }
      }
      else
      {
        i25 = i8 & i3;
        i8 >>= i2;
        i11 -= i2;
        if ((i25 <= n) && (i25 != m))
          if (i25 == k)
          {
            i2 = j + 1;
            i3 = -1 + (1 << i2);
            n = k + 2;
            i1 = -1;
          }
          else if (i1 == -1)
          {
            byte[] arrayOfByte5 = this.gcS;
            int i31 = i6 + 1;
            arrayOfByte5[i6] = this.gcR[i25];
            i6 = i31;
            i1 = i25;
            i7 = i25;
          }
          else
          {
            if (i25 != n)
              break label650;
            byte[] arrayOfByte4 = this.gcS;
            i26 = i6 + 1;
            arrayOfByte4[i6] = ((byte)i7);
            i27 = i1;
            while (i27 > k)
            {
              byte[] arrayOfByte3 = this.gcS;
              int i30 = i26 + 1;
              arrayOfByte3[i26] = this.gcR[i27];
              i27 = this.gcQ[i27];
              i26 = i30;
            }
            int i28 = 0xFF & this.gcR[i27];
            if (n < 4096)
            {
              byte[] arrayOfByte2 = this.gcS;
              int i29 = i26 + 1;
              arrayOfByte2[i26] = ((byte)i28);
              this.gcQ[n] = ((short)i1);
              this.gcR[n] = ((byte)i28);
              i21 = n + 1;
              if (((i21 & i3) == 0) && (i21 < 4096))
              {
                i2++;
                i3 += i21;
              }
              i19 = i8;
              i20 = i25;
              i14 = i3;
              i15 = i28;
              i16 = i11;
              i17 = i2;
              i18 = i29;
            }
          }
      }
    }
    while (true)
    {
      int i22 = i18 - 1;
      byte[] arrayOfByte1 = this.gcT;
      int i23 = i5 + 1;
      arrayOfByte1[i5] = this.gcS[i22];
      i9++;
      i5 = i23;
      i2 = i17;
      i11 = i16;
      i7 = i15;
      i3 = i14;
      int i24 = i20;
      i8 = i19;
      i6 = i22;
      n = i21;
      i1 = i24;
      break;
      for (int i13 = i5; i13 < i; i13++)
        this.gcT[i13] = 0;
      return;
      label650: i26 = i6;
      i27 = i25;
      break label382;
      label661: i14 = i3;
      i15 = i7;
      i16 = i11;
      i17 = i2;
      i18 = i6;
      i19 = i8;
      i20 = i1;
      i21 = n;
    }
  }

  private Bitmap ayP()
  {
    int i = 0;
    int[] arrayOfInt = new int[this.width * this.height];
    if (this.gcU == null)
      if (this.gcV.size() <= 0)
        break label557;
    label143: label546: label557: for (q localq = (q)this.gcV.lastElement(); ; localq = null)
    {
      if (this.gcN > 0)
        if (this.gcN == 3)
          if (this.gcV.size() <= 1)
            break label353;
      int j;
      int m;
      label200: int n;
      label219: label353: for (localq = (q)this.gcV.elementAt(-2 + this.gcV.size()); ; localq = null)
      {
        if (localq != null)
        {
          arrayOfInt = localq.gcW;
          this.width = localq.width;
          this.height = localq.height;
          if (this.gcN == 2)
            e(arrayOfInt);
        }
        j = 8;
        int k = 1;
        m = 0;
        if (i >= this.gcF)
          break label508;
        if (!this.gcA)
          break label546;
        if (m >= this.gcF)
          k++;
        switch (k)
        {
        default:
          int i9 = m + j;
          int i10 = m;
          m = i9;
          n = i10;
          int i1 = n + this.gcD;
          if (i1 >= this.height)
            break label502;
          int i2 = i1 * this.width;
          int i3 = i2 + this.gcC;
          int i4 = i3 + this.gcE;
          if (i2 + this.width < i4)
            i4 = i2 + this.width;
          int i6;
          for (int i5 = i * this.gcE; i3 < i4; i5 = i6)
          {
            byte[] arrayOfByte = this.gcT;
            i6 = i5 + 1;
            int i7 = 0xFF & arrayOfByte[i5];
            int i8 = this.gcw[i7];
            if (i8 != 0)
              arrayOfInt[i3] = i8;
            i3++;
          }
        case 2:
        case 3:
        case 4:
        }
      }
      if (this.gcU.size() > 0);
      for (Bitmap localBitmap1 = ((p)this.gcU.lastElement()).ckx; this.gcN > 0; localBitmap1 = null)
      {
        if (this.gcN == 3)
          if (this.gcU.size() <= 1)
            break label473;
        label473: for (localBitmap1 = ((p)this.gcU.elementAt(-2 + this.gcU.size())).ckx; localBitmap1 != null; localBitmap1 = null)
        {
          localBitmap1.getPixels(arrayOfInt, 0, this.width, 0, 0, this.width, this.height);
          if (this.gcN != 2)
            break;
          e(arrayOfInt);
          break;
        }
        m = 4;
        break label200;
        j = 4;
        m = 2;
        break label200;
        m = 1;
        j = 2;
        break label200;
        label502: i++;
        break label143;
        try
        {
          label508: Bitmap localBitmap2 = Bitmap.createBitmap(arrayOfInt, this.width, this.height, Bitmap.Config.ARGB_4444);
          return localBitmap2;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          return Bitmap.createBitmap(arrayOfInt, this.width, this.height, Bitmap.Config.RGB_565);
        }
        n = i;
        break label219;
      }
    }
  }

  private void ayQ()
  {
    do
      ayU();
    while ((this.gcL > 0) && (!ayL()));
  }

  private void ayR()
  {
    do
      ayU();
    while ((this.gcL > 0) && (!ayL()));
  }

  private int ayS()
  {
    try
    {
      int i = this.in.read();
      return i;
    }
    catch (Exception localException)
    {
      this.status = -1;
    }
    return 0;
  }

  private int ayT()
  {
    return ayS() | ayS() << 8;
  }

  private int ayU()
  {
    this.gcL = ayS();
    int i = this.gcL;
    int j = 0;
    if (i > 0)
      try
      {
        while (j < this.gcL)
        {
          int k = this.in.read(this.gcK, j, this.gcL - j);
          if (k == -1)
            break;
          j += k;
        }
      }
      catch (Exception localException)
      {
        if (j < this.gcL)
          this.status = -1;
      }
    return j;
  }

  private boolean b(p paramp)
  {
    int i;
    boolean bool3;
    label333: boolean bool4;
    label350: int k;
    switch (ayS())
    {
    default:
      this.status = -1;
      i = 0;
    case 33:
      while (true)
      {
        boolean bool1;
        if (i == 0)
        {
          boolean bool2 = ayL();
          bool1 = false;
          if (!bool2);
        }
        else
        {
          bool1 = true;
        }
        return bool1;
        switch (ayS())
        {
        default:
          ayR();
          i = 0;
          break;
        case 249:
          ayS();
          int i1 = ayS();
          this.gcM = ((i1 & 0x1C) >> 2);
          if (this.gcM == 0)
            this.gcM = 1;
          if ((i1 & 0x1) != 0);
          for (boolean bool5 = true; ; bool5 = false)
          {
            this.gcO = bool5;
            this.delay = (10 * ayT());
            this.gcP = ayS();
            ayS();
            i = 0;
            break;
          }
        case 255:
          ayU();
          String str = "";
          for (int n = 0; n < 11; n++)
            str = str + (char)this.gcK[n];
          if (str.equals("NETSCAPE2.0"))
          {
            ayQ();
            i = 0;
          }
          else
          {
            ayR();
            i = 0;
          }
          break;
        }
      }
    case 44:
      this.gcC = ayT();
      this.gcD = ayT();
      this.gcE = ayT();
      this.gcF = ayT();
      int j = ayS();
      if ((j & 0x80) != 0)
      {
        bool3 = true;
        this.gcz = bool3;
        if ((j & 0x40) == 0)
          break label589;
        bool4 = true;
        this.gcA = bool4;
        this.gcB = (2 << (j & 0x7));
        if (!this.gcz)
          break label595;
        this.gcv = lC(this.gcB);
        this.gcw = this.gcv;
        label394: if (!this.gcO)
          break label641;
        k = this.gcw[this.gcP];
        this.gcw[this.gcP] = 0;
      }
      break;
    case 59:
    case 0:
    }
    while (true)
    {
      if (this.gcw == null)
        this.status = -1;
      if (!ayL())
      {
        ayO();
        ayR();
        if (!ayL())
        {
          if (paramp == null)
            paramp = new p();
          Bitmap localBitmap = ayP();
          int m = this.delay;
          paramp.ckx = localBitmap;
          paramp.duration = m;
          if (this.gcO)
            this.gcw[this.gcP] = k;
          this.gcN = this.gcM;
          this.gcG = this.gcC;
          this.gcH = this.gcD;
          this.gcI = this.gcE;
          this.gcJ = this.gcF;
          this.gcy = this.bgColor;
          this.gcM = 0;
          this.gcO = false;
          this.delay = 0;
          this.gcv = null;
        }
      }
      i = 0;
      break;
      bool3 = false;
      break label333;
      label589: bool4 = false;
      break label350;
      label595: this.gcw = this.gcu;
      if (this.gcx != this.gcP)
        break label394;
      this.bgColor = 0;
      break label394;
      i = 1;
      break;
      aa.d("MicroMsg.GifDecoder", "notice, bad byte!");
      i = 0;
      break;
      label641: k = 0;
    }
  }

  public static boolean ck(byte[] paramArrayOfByte)
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    Object localObject = "";
    int i = 0;
    while (true)
    {
      if (i < 6);
      try
      {
        String str = (String)localObject + (char)localByteArrayInputStream.read();
        localObject = str;
        i++;
        continue;
        try
        {
          localByteArrayInputStream.close();
          label57: return ((String)localObject).startsWith("GIF");
        }
        catch (IOException localIOException1)
        {
          break label57;
        }
      }
      catch (IOException localIOException2)
      {
      }
    }
    return false;
  }

  private void e(int[] paramArrayOfInt)
  {
    int i = 0;
    int j;
    if (!this.gcO)
      j = this.gcy;
    while (true)
      if (i < this.gcJ)
      {
        int k = (i + this.gcH) * this.width + this.gcG;
        int m = k + this.gcI;
        while (k < m)
        {
          paramArrayOfInt[k] = j;
          k++;
        }
        i++;
      }
      else
      {
        return;
        j = 0;
        i = 0;
      }
  }

  private void init()
  {
    this.status = 0;
    this.gcu = null;
    this.gcv = null;
  }

  private int[] lC(int paramInt)
  {
    int i = 0;
    int j = paramInt * 3;
    int[] arrayOfInt = null;
    byte[] arrayOfByte = new byte[j];
    while (true)
    {
      int m;
      try
      {
        int i6 = this.in.read(arrayOfByte);
        k = i6;
        if (k < j)
        {
          this.status = -1;
          return arrayOfInt;
        }
      }
      catch (Exception localException)
      {
        int k = 0;
        continue;
        arrayOfInt = new int[256];
        m = 0;
      }
      while (m < paramInt)
      {
        int n = i + 1;
        int i1 = 0xFF & arrayOfByte[i];
        int i2 = n + 1;
        int i3 = 0xFF & arrayOfByte[n];
        i = i2 + 1;
        int i4 = 0xFF & arrayOfByte[i2];
        int i5 = m + 1;
        arrayOfInt[m] = (i4 | (0xFF000000 | i1 << 16 | i3 << 8));
        m = i5;
      }
    }
  }

  public final int a(Vector paramVector)
  {
    this.gcU = paramVector;
    this.in = new ByteArrayInputStream(this.efK);
    this.efK = null;
    this.gcV = null;
    init();
    ayM();
    if (ayL());
    while (true)
    {
      return -1;
      ayN();
      try
      {
        this.in.close();
        label58: if (ayL())
          continue;
        return 0;
      }
      catch (Exception localException)
      {
        break label58;
      }
    }
  }

  public final boolean a(p paramp)
  {
    boolean bool = b(paramp);
    if ((paramp != null) && (paramp.ckx != null))
      this.gcV.add(new q(this, paramp.ckx, this.width, this.height));
    return bool;
  }

  public final void finish()
  {
    try
    {
      this.in.close();
      this.gcV.clear();
      this.gcV = null;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean ready()
  {
    this.in = new ByteArrayInputStream(this.efK);
    this.efK = null;
    this.gcU = null;
    this.gcV = new Vector();
    init();
    ayM();
    return !ayL();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.o
 * JD-Core Version:    0.6.2
 */
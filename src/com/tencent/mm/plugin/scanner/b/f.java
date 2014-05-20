package com.tencent.mm.plugin.scanner.b;

import android.graphics.Point;
import android.graphics.Rect;
import com.tencent.imageboost.ImgProcessScan;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.qbar.QbarNative;

public final class f extends a
{
  public boolean dlw = false;
  private Object ebP = new Object();
  public boolean edn = false;
  private boolean efZ = false;
  private boolean ega = false;
  private boolean egb = true;
  private byte[] egc;
  byte[] egd;
  int[] ege = null;

  public f(d paramd, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramd);
    this.efZ = paramBoolean1;
    this.egb = paramBoolean2;
  }

  private void aaL()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    int i = QbarNative.a(localStringBuilder1, localStringBuilder2);
    if (i == 1)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = localStringBuilder1.toString();
      arrayOfObject[1] = localStringBuilder2.toString();
      arrayOfObject[2] = Integer.valueOf(i);
      aa.e("MicroMsg.scanner.QBarDecoder", "decode type:%s, data:%s, gResult:%s", arrayOfObject);
      if (!cj.hX(localStringBuilder2.toString()))
      {
        if (!localStringBuilder1.toString().equals("QR_CODE"))
          break label101;
        this.efM = localStringBuilder2.toString();
        efN = 1;
      }
    }
    return;
    label101: this.efM = (localStringBuilder1.toString() + "," + localStringBuilder2);
    efN = 2;
  }

  private boolean bj(boolean paramBoolean)
  {
    int i;
    if (!this.ega)
    {
      i = QbarNative.Init(2, 0, "ANY", "UTF-8");
      if (!paramBoolean)
        break label107;
      this.ege = new int[1];
      this.ege[0] = 2;
    }
    while (true)
    {
      int j = QbarNative.SetReaders(this.ege, this.ege.length);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(j);
      arrayOfObject[2] = Integer.valueOf(QbarNative.GetVersion());
      aa.e("MicroMsg.scanner.QBarDecoder", "QbarNative.Init = [%s], SetReaders = [%s], version = [%s]", arrayOfObject);
      if ((i <= 0) || (j <= 0))
        break;
      this.ega = true;
      return this.ega;
      label107: this.ege = new int[2];
      this.ege[0] = 2;
      this.ege[1] = 0;
    }
    aa.e("MicroMsg.scanner.QBarDecoder", "QbarNative failed, releaseDecoder 1");
    return false;
  }

  public final String a(c.a parama)
  {
    try
    {
      synchronized (this.ebP)
      {
        this.efM = null;
        if (!bj(true))
        {
          aaF();
          this.dlw = false;
          return null;
        }
        int i = QbarNative.ScanImage(parama.aaJ(), parama.getWidth(), parama.getHeight(), 0);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        aa.e("MicroMsg.scanner.QBarDecoder", "directScanQRCodeImg decode ScanImage %s", arrayOfObject);
        if (i != 1)
        {
          this.dlw = false;
          return null;
        }
      }
      aaL();
      return this.efM;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.scanner.QBarDecoder", " Exception in directScanQRCodeImg() " + localException.getMessage());
    }
  }

  public final void aaF()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Boolean.valueOf(this.ega);
    aa.e("MicroMsg.scanner.QBarDecoder", "releaseDecoder() start, hasInitQBar = %s", arrayOfObject1);
    this.edn = true;
    synchronized (this.ebP)
    {
      if (this.ega)
      {
        int j = QbarNative.Release();
        this.ega = false;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(j);
        aa.e("MicroMsg.scanner.QBarDecoder", "QbarNative.Release() = [%s]", arrayOfObject3);
      }
      int i = ImgProcessScan.Release();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i);
      aa.e("MicroMsg.scanner.QBarDecoder", "ImgProcessScan.Release() = [%s]", arrayOfObject2);
      this.egc = null;
      this.egd = null;
      e.aaH();
      return;
    }
  }

  public final void aaG()
  {
    if (this.ega)
    {
      aaF();
      this.ega = false;
    }
    this.edn = false;
    this.dlw = false;
  }

  public final boolean b(byte[] paramArrayOfByte, Point paramPoint, Rect paramRect, long paramLong)
  {
    aa.i("MicroMsg.scanner.QBarDecoder", "decode() start");
    if (this.dlw)
    {
      aa.e("MicroMsg.scanner.QBarDecoder", "is decoding, return false");
      return false;
    }
    if (this.edn)
    {
      aa.w("MicroMsg.scanner.QBarDecoder", "isReleasing, return false 1");
      return false;
    }
    if ((paramArrayOfByte == null) || (paramPoint == null) || (paramRect == null))
    {
      aa.e("MicroMsg.scanner.QBarDecoder", "wrong args");
      return false;
    }
    this.dlw = true;
    this.efM = null;
    Rect localRect;
    try
    {
      synchronized (this.ebP)
      {
        localRect = new Rect();
        if ((!com.tencent.mm.compatible.c.d.pI()) && (!this.egb))
          break label270;
        int i = paramRect.width() % 4;
        int j = paramRect.height() % 4;
        localRect.left = paramRect.left;
        paramRect.right -= i;
        localRect.top = paramRect.top;
        paramRect.bottom -= j;
        if ((localRect.right > localRect.left) && (localRect.bottom > localRect.top))
          break label506;
        this.dlw = false;
        return false;
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.scanner.QBarDecoder", " Exception in decode() " + localException.getMessage());
    }
    this.dlw = false;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.efM;
    aa.d("MicroMsg.scanner.QBarDecoder", "decode() finish, resultText = [%s]", arrayOfObject1);
    label270: label506: e locale;
    int k;
    int m;
    int n;
    int i3;
    int i4;
    if (!cj.hX(this.efM))
    {
      return true;
      localRect.left = (paramPoint.x / 2 - paramRect.height());
      localRect.right = (paramPoint.x / 2 + paramRect.height());
      localRect.top = (paramPoint.y / 2 - paramRect.width() / 2);
      localRect.bottom = (paramPoint.y / 2 + paramRect.width() / 2);
      if (localRect.left < 0)
        localRect.left = 0;
      if (localRect.right > -1 + paramPoint.x)
        localRect.right = (-1 + paramPoint.x);
      if (localRect.top < 0)
        localRect.top = 0;
      if (localRect.bottom > -1 + paramPoint.y)
        localRect.bottom = (-1 + paramPoint.y);
      int i7 = localRect.width() % 4;
      int i8 = localRect.height() % 4;
      if (i7 != 0)
        localRect.right -= i7;
      if (i8 != 0)
        localRect.bottom -= i8;
      if ((localRect.right <= localRect.left) || (localRect.bottom <= localRect.top))
      {
        this.dlw = false;
        return false;
      }
      if (!bj(this.efZ))
      {
        aaF();
        this.dlw = false;
        return false;
      }
      locale = new e(paramArrayOfByte, paramPoint.x, paramPoint.y, localRect);
      k = locale.width;
      m = locale.height;
      if (com.tencent.mm.compatible.c.d.pI())
        break label973;
      n = 1;
      int i1 = locale.height;
      int i2 = locale.width;
      i3 = i1;
      i4 = i2;
    }
    while (true)
    {
      if (this.egc == null)
      {
        this.egc = new byte[3 * (locale.width * locale.height) / 2];
        this.egd = new byte[locale.width * locale.height];
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Integer.valueOf(3 * (locale.width * locale.height) / 2);
        aa.e("MicroMsg.scanner.QBarDecoder", "tempOutBytes = null, new byte[%s]", arrayOfObject5);
      }
      while (true)
      {
        int i5 = ImgProcessScan.a(this.egc, paramArrayOfByte, paramPoint.x, paramPoint.y, locale.left, -1 + (locale.left + locale.width), locale.top, -1 + (locale.top + locale.height), n);
        if (i5 == 1)
          break;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(i5);
        aa.b("MicroMsg.scanner.QBarDecoder", "decode pro_result %s", arrayOfObject3);
        this.dlw = false;
        return false;
        if (this.egc.length != 3 * (locale.width * locale.height) / 2)
        {
          this.egc = null;
          this.egc = new byte[3 * (locale.width * locale.height) / 2];
          this.egd = null;
          this.egd = new byte[locale.width * locale.height];
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(3 * (locale.width * locale.height) / 2);
          aa.e("MicroMsg.scanner.QBarDecoder", "tempOutBytes size change, new byte[%s]", arrayOfObject2);
        }
      }
      System.arraycopy(this.egc, 0, this.egd, 0, this.egd.length);
      int i6 = QbarNative.ScanImage(this.egd, i3, i4, 0);
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(i6);
      aa.e("MicroMsg.scanner.QBarDecoder", "decode ScanImage %s", arrayOfObject4);
      if (i6 != 1)
      {
        this.dlw = false;
        return false;
      }
      aaL();
      break;
      return false;
      label973: i3 = k;
      i4 = m;
      n = 0;
    }
  }

  public final void bi(boolean paramBoolean)
  {
    this.egb = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.f
 * JD-Core Version:    0.6.2
 */
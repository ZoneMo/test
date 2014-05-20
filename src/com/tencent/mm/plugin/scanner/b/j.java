package com.tencent.mm.plugin.scanner.b;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Point;
import android.graphics.Rect;
import com.tencent.imageboost.ImgProcessScan;
import com.tencent.mm.compatible.c.b;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import java.io.ByteArrayOutputStream;
import java.io.File;

public final class j extends a
{
  private boolean dlw = false;
  private Object ebP = new Object();
  private long ect;
  private boolean edn = false;
  private float eed = 1.0F;
  private boolean egb = true;
  private byte[] egc;
  private final int egm = 25;
  private boolean egn = false;
  private final int ego = 1;
  private int egp = 0;
  private boolean egq;
  private int outHeight;
  private int outWidth;
  private int quality = 50;

  public j(d paramd, int paramInt, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramd);
    this.quality = paramInt;
    this.eed = paramFloat;
    this.egb = paramBoolean2;
    this.egq = paramBoolean1;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Float.valueOf(paramFloat);
    arrayOfObject[2] = Boolean.valueOf(paramBoolean2);
    arrayOfObject[3] = Boolean.valueOf(paramBoolean1);
    aa.d("MicroMsg.scanner.ScanImageDecoder", "quality = [%s], scaleRate = [%s], needRotate = [%s], ocrMode=[%s]", arrayOfObject);
  }

  public final void aaF()
  {
    aa.d("MicroMsg.scanner.ScanImageDecoder", "releaseDecoder start");
    this.edn = true;
    if (this.ebP != null);
    synchronized (this.ebP)
    {
      if (this.egn)
      {
        int j = ImgProcessScan.FocusRelease();
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(j);
        aa.e("sizepara", "ImgProcessScan.FocusRelease() = [%s]", arrayOfObject2);
        this.egn = false;
      }
      int i = ImgProcessScan.Release();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      aa.e("MicroMsg.scanner.ScanImageDecoder", "ImgProcessScan.Release() = [%s]", arrayOfObject1);
      this.egc = null;
      e.aaH();
      aa.d("MicroMsg.scanner.ScanImageDecoder", "releaseDecoder done");
      return;
    }
  }

  public final void aaG()
  {
    if (this.egn)
      aaF();
    this.dlw = false;
    this.edn = false;
    this.egn = false;
  }

  @TargetApi(8)
  public final boolean b(byte[] paramArrayOfByte, Point paramPoint, Rect paramRect, long paramLong)
  {
    if (this.dlw)
    {
      aa.e("MicroMsg.scanner.ScanImageDecoder", "decode() is decoding, return false");
      return false;
    }
    this.dlw = true;
    if ((paramArrayOfByte == null) || (paramPoint == null) || (paramRect == null))
    {
      Object[] arrayOfObject1 = new Object[3];
      boolean bool1;
      boolean bool2;
      if (paramArrayOfByte == null)
      {
        bool1 = true;
        arrayOfObject1[0] = Boolean.valueOf(bool1);
        if (paramPoint != null)
          break label109;
        bool2 = true;
        label62: arrayOfObject1[1] = Boolean.valueOf(bool2);
        if (paramRect != null)
          break label115;
      }
      label109: label115: for (boolean bool3 = true; ; bool3 = false)
      {
        arrayOfObject1[2] = Boolean.valueOf(bool3);
        aa.b("MicroMsg.scanner.ScanImageDecoder", "decode() data null:[%s], resolution null:[%s], coverage null:[%s]", arrayOfObject1);
        this.dlw = false;
        return false;
        bool1 = false;
        break;
        bool2 = false;
        break label62;
      }
    }
    if (paramLong < 25L)
    {
      Object[] arrayOfObject11 = new Object[1];
      arrayOfObject11[0] = Long.valueOf(paramLong);
      aa.b("MicroMsg.scanner.ScanImageDecoder", "decode() not enough memory [%s]", arrayOfObject11);
      this.dlw = false;
      return false;
    }
    Rect localRect;
    try
    {
      if (this.egp <= 0)
      {
        this.egp = (1 + this.egp);
        this.dlw = false;
        return false;
      }
      synchronized (this.ebP)
      {
        localRect = new Rect();
        if ((com.tencent.mm.compatible.c.d.pI()) || (this.egb))
        {
          int i = paramRect.width() % 4;
          int j = paramRect.height() % 4;
          localRect.left = paramRect.left;
          paramRect.right -= i;
          localRect.top = paramRect.top;
          paramRect.bottom -= j;
          if ((localRect.right > localRect.left) && (localRect.bottom > localRect.top))
            break label592;
          this.dlw = false;
          return false;
        }
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localException.toString();
      aa.b("MicroMsg.scanner.ScanImageDecoder", " Exception in decode(): [%s]", arrayOfObject2);
    }
    while (true)
    {
      this.efL = null;
      this.dlw = false;
      return false;
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
      int i2 = localRect.width() % 4;
      int i3 = localRect.height() % 4;
      if (i2 != 0)
        localRect.right -= i2;
      if (i3 != 0)
        localRect.bottom -= i3;
      if ((localRect.right <= localRect.left) || (localRect.bottom <= localRect.top))
      {
        this.dlw = false;
        return false;
      }
      label592: e locale = new e(paramArrayOfByte, paramPoint.x, paramPoint.y, localRect);
      if ((locale.getHeight() == 0) || (locale.getWidth() == 0))
      {
        this.dlw = false;
        return false;
      }
      if (this.edn)
      {
        aa.w("MicroMsg.scanner.ScanImageDecoder", "isReleasing, return false 1");
        return false;
      }
      byte[] arrayOfByte = locale.aaI();
      if (arrayOfByte == null)
      {
        this.dlw = false;
        return false;
      }
      if (!this.egn)
      {
        int i1;
        if (!com.tencent.mm.compatible.c.d.pI())
        {
          i1 = ImgProcessScan.a(localRect.height(), localRect.width(), this.egq, ImgProcessScan.aY(s.ceK.cdG));
          Object[] arrayOfObject10 = new Object[4];
          arrayOfObject10[0] = Integer.valueOf(localRect.height());
          arrayOfObject10[1] = Integer.valueOf(localRect.width());
          arrayOfObject10[2] = Boolean.valueOf(this.egq);
          arrayOfObject10[3] = Integer.valueOf(s.ceK.cdG);
          aa.e("MicroMsg.scanner.ScanImageDecoder", "Focus init params1=[%s] params2=[%s] params3=[%s], focusThreshold=[%s]", arrayOfObject10);
        }
        while (i1 == -1)
        {
          Object[] arrayOfObject9 = new Object[1];
          arrayOfObject9[0] = Integer.valueOf(i1);
          aa.b("MicroMsg.scanner.ScanImageDecoder", "error in Focus init = [%s]", arrayOfObject9);
          return false;
          i1 = ImgProcessScan.a(localRect.width(), localRect.height(), this.egq, ImgProcessScan.aY(s.ceK.cdG));
          Object[] arrayOfObject8 = new Object[4];
          arrayOfObject8[0] = Integer.valueOf(localRect.width());
          arrayOfObject8[1] = Integer.valueOf(localRect.height());
          arrayOfObject8[2] = Boolean.valueOf(this.egq);
          arrayOfObject8[3] = Integer.valueOf(s.ceK.cdG);
          aa.e("MicroMsg.scanner.ScanImageDecoder", "Focus init Landscape params1=[%s] params2=[%s] params3=[%s], focusThreshold=[%s]", arrayOfObject8);
        }
        this.egn = true;
      }
      d.efV[0] = false;
      d.efV[1] = false;
      long l = cj.FE();
      ImgProcessScan.FocusPro(arrayOfByte, com.tencent.mm.compatible.c.d.pI(), d.efV);
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Boolean.valueOf(d.efV[0]);
      arrayOfObject3[1] = Boolean.valueOf(d.efV[1]);
      arrayOfObject3[2] = Long.valueOf(cj.O(l));
      aa.e("MicroMsg.scanner.ScanImageDecoder", "is best:%s, need focus:%s, cost:%s", arrayOfObject3);
      if (this.ect == 0L)
        this.ect = System.currentTimeMillis();
      if ((d.efV[1] == 0) && (System.currentTimeMillis() - this.ect > 9000L))
      {
        aa.d("MicroMsg.scanner.ScanImageDecoder", "reach focus interfal");
        d.efV[1] = true;
        this.ect = System.currentTimeMillis();
      }
      if (d.efV[0] == 1)
      {
        if (this.edn)
        {
          aa.w("MicroMsg.scanner.ScanImageDecoder", "isReleasing, return false 2");
          return false;
        }
        this.outWidth = locale.width;
        this.outHeight = locale.height;
        boolean bool4 = com.tencent.mm.compatible.c.d.pI();
        int k = 0;
        if (!bool4)
        {
          k = 1;
          this.outWidth = locale.height;
          this.outHeight = locale.width;
        }
        boolean bool5 = this.eed < 0.9D;
        int m = 0;
        if (bool5)
        {
          m = 1;
          this.outWidth /= 2;
          this.outHeight /= 2;
        }
        if (this.egc == null)
        {
          this.egc = new byte[3 * (this.outWidth * this.outHeight) / 2];
          Object[] arrayOfObject7 = new Object[1];
          arrayOfObject7[0] = Integer.valueOf(3 * (this.outWidth * this.outHeight) / 2);
          aa.f("MicroMsg.scanner.ScanImageDecoder", "tempOutBytes = null, new byte[%s]", arrayOfObject7);
        }
        while (true)
        {
          int n = ImgProcessScan.a(this.egc, arrayOfByte, this.outWidth, this.outHeight, m);
          Object[] arrayOfObject5 = new Object[5];
          arrayOfObject5[0] = Integer.valueOf(n);
          arrayOfObject5[1] = Integer.valueOf(this.outWidth);
          arrayOfObject5[2] = Integer.valueOf(this.outHeight);
          arrayOfObject5[3] = Integer.valueOf(k);
          arrayOfObject5[4] = Integer.valueOf(m);
          aa.e("MicroMsg.scanner.ScanImageDecoder", "decode() imgRet = [%s], outWidth = [%s], outHeight = [%s], imgRotate=[%s], imgScale=[%s]", arrayOfObject5);
          if (n == 1)
            break;
          this.efL = null;
          this.dlw = false;
          return false;
          if (this.egc.length != 3 * (this.outWidth * this.outHeight) / 2)
          {
            this.egc = null;
            this.egc = new byte[3 * (this.outWidth * this.outHeight) / 2];
            Object[] arrayOfObject4 = new Object[1];
            arrayOfObject4[0] = Integer.valueOf(3 * (this.outWidth * this.outHeight) / 2);
            aa.f("MicroMsg.scanner.ScanImageDecoder", "tempOutBytes size change, new byte[%s]", arrayOfObject4);
          }
        }
        if (this.edn)
        {
          aa.w("MicroMsg.scanner.ScanImageDecoder", "isReleasing, return false 3");
          return false;
        }
        if (i.bG(8))
          com.tencent.mm.compatible.a.a.a(8, new k(this));
        while (true)
        {
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = Integer.valueOf(this.efL.length);
          aa.d("MicroMsg.scanner.ScanImageDecoder", "decode() finish greyData.length = [%s]", arrayOfObject6);
          this.dlw = false;
          return true;
          aa.d("MicroMsg.scanner.ScanImageDecoder", "decode() compress jpeg by PlanarYUVLuminanceSource");
          Bitmap localBitmap = new e(this.egc, this.outWidth, this.outHeight, new Rect(0, 0, this.outWidth, this.outHeight)).aaK();
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          localBitmap.compress(Bitmap.CompressFormat.JPEG, this.quality, localByteArrayOutputStream);
          this.efL = localByteArrayOutputStream.toByteArray();
          localByteArrayOutputStream.close();
          if (at.cHz)
            h.a(localBitmap, this.quality, Bitmap.CompressFormat.JPEG, l.getExternalStorageDirectory().getAbsolutePath() + "/_scanImage_.JPEG", false);
          localBitmap.recycle();
        }
      }
    }
  }

  public final void bi(boolean paramBoolean)
  {
    this.egb = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.j
 * JD-Core Version:    0.6.2
 */
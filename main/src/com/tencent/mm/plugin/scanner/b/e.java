package com.tencent.mm.plugin.scanner.b;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import c.a;
import com.tencent.imageboost.ImgProcessScan;
import com.tencent.mm.sdk.platformtools.aa;

public final class e extends a
{
  public final byte[] efW;
  private final int efX;
  private final int efY;
  public int height;
  public int left;
  public int top;
  public int width;

  public e(byte[] paramArrayOfByte, int paramInt1, int paramInt2, Rect paramRect)
  {
    super(paramRect.width(), paramRect.height());
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    arrayOfObject[3] = Integer.valueOf(paramRect.left);
    arrayOfObject[4] = Integer.valueOf(paramRect.top);
    arrayOfObject[5] = Integer.valueOf(paramRect.width());
    arrayOfObject[6] = Integer.valueOf(paramRect.height());
    aa.f("MicroMsg.scanner.PlanarYUVLuminanceSource", "init yuvData.len: %d,  dataW: %d, dataH: %d, left: %d, top: %d, width: %d, height: %d ", arrayOfObject);
    this.efW = paramArrayOfByte;
    this.efX = paramInt1;
    this.efY = paramInt2;
    int i;
    int k;
    label176: int m;
    if ((paramRect.left < 0) || (paramRect.left >= paramInt1))
    {
      i = 0;
      this.left = i;
      int j = paramRect.top;
      k = 0;
      if (j >= 0)
      {
        int i1 = paramRect.top;
        k = 0;
        if (i1 < paramInt2)
          break label284;
      }
      this.top = k;
      if (this.left + paramRect.width() <= paramInt1)
        break label294;
      m = paramInt1 - this.left;
      label204: this.width = m;
      if (this.top + paramRect.height() <= paramInt2)
        break label304;
    }
    label284: label294: label304: for (int n = paramInt2 - this.top; ; n = paramRect.height())
    {
      this.height = n;
      if ((this.left + this.width <= paramInt1) && (this.top + this.height <= paramInt2))
        return;
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
      i = paramRect.left;
      break;
      k = paramRect.top;
      break label176;
      m = paramRect.width();
      break label204;
    }
  }

  public static void aaH()
  {
    l.aaR().aaS();
    System.gc();
  }

  public final byte[] aaI()
  {
    int i = 0;
    byte[] arrayOfByte1;
    if ((this.width == this.efX) && (this.height == this.efY))
      arrayOfByte1 = this.efW;
    while (true)
    {
      return arrayOfByte1;
      int k;
      try
      {
        int j = this.width * this.height;
        arrayOfByte1 = l.aaR().hJ(j);
        k = this.top * this.efX + this.left;
        if (this.width == this.efX)
        {
          System.arraycopy(this.efW, k, arrayOfByte1, 0, j);
          return arrayOfByte1;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.scanner.PlanarYUVLuminanceSource", " yuvData.len:" + this.efW.length + " dataWidth:" + this.efX + " dataHeight:" + this.efY + " left:" + this.left + " top:" + this.top + " width:" + this.width + " height:" + this.height + " tStr:" + localException.toString());
        return null;
      }
      byte[] arrayOfByte2 = this.efW;
      while (i < this.height)
      {
        System.arraycopy(arrayOfByte2, k, arrayOfByte1, i * this.width, this.width);
        int m = this.efX;
        k += m;
        i++;
      }
    }
  }

  public final byte[] aaJ()
  {
    int i = 0;
    byte[] arrayOfByte1;
    if ((this.width == this.efX) && (this.height == this.efY))
      arrayOfByte1 = this.efW;
    while (true)
    {
      return arrayOfByte1;
      int k;
      try
      {
        int j = this.width * this.height;
        arrayOfByte1 = new byte[j];
        k = this.top * this.efX + this.left;
        if (this.width == this.efX)
        {
          System.arraycopy(this.efW, k, arrayOfByte1, 0, j);
          return arrayOfByte1;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.scanner.PlanarYUVLuminanceSource", " yuvData.len:" + this.efW.length + " dataWidth:" + this.efX + " dataHeight:" + this.efY + " left:" + this.left + " top:" + this.top + " width:" + this.width + " height:" + this.height + " tStr:" + localException.toString());
        return null;
      }
      byte[] arrayOfByte2 = this.efW;
      while (i < this.height)
      {
        System.arraycopy(arrayOfByte2, k, arrayOfByte1, i * this.width, this.width);
        int m = this.efX;
        k += m;
        i++;
      }
    }
  }

  public final Bitmap aaK()
  {
    int[] arrayOfInt = new int[this.width * this.height];
    ImgProcessScan.a(this.efW, arrayOfInt, this.efX, this.efY, this.left, this.top, this.width, this.height);
    Bitmap localBitmap = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
    localBitmap.setPixels(arrayOfInt, 0, this.width, 0, 0, this.width, this.height);
    return localBitmap;
  }

  public final byte[] c(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= this.height))
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < this.width))
      paramArrayOfByte = new byte[this.width];
    int i = (paramInt + this.top) * this.efX + this.left;
    System.arraycopy(this.efW, i, paramArrayOfByte, 0, this.width);
    return paramArrayOfByte;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.e
 * JD-Core Version:    0.6.2
 */
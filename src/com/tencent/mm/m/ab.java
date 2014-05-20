package com.tencent.mm.m;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.a;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.xw;
import com.tencent.mm.protocal.a.xx;
import com.tencent.mm.protocal.q;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import java.io.File;
import java.io.FileOutputStream;

public final class ab extends com.tencent.mm.n.x
  implements com.tencent.mm.network.ab
{
  private com.tencent.mm.n.m cjh;
  private int ckU;
  private int ckV;
  private int ckW;
  private String clm;
  private String cln;
  private String clo;
  private String clp = v.th();

  public ab(int paramInt, String paramString)
  {
    if (paramInt == 2)
      this.clp = i.tE(this.clp);
    this.cln = af.vJ().h(this.clp, true);
    String str = this.cln + ".tmp";
    if (B(paramString, str) == 0)
    {
      this.clm = str;
      this.ckW = paramInt;
      this.clo = af.vJ().ef(this.clp);
      this.ckU = 0;
      this.ckV = 0;
    }
  }

  private static int B(String paramString1, String paramString2)
  {
    BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
    localOptions1.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString1, localOptions1);
    if ((localOptions1.outHeight < 640) && (localOptions1.outWidth < 640))
    {
      com.tencent.mm.sdk.platformtools.m.f(paramString1, paramString2, false);
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Integer.valueOf(localOptions1.outHeight);
      arrayOfObject4[1] = Integer.valueOf(localOptions1.outWidth);
      com.tencent.mm.sdk.platformtools.aa.f("MicroMsg.NetSceneUploadHDHeadImg", "outHeight and outWidth: %d,%d , do not scale.", arrayOfObject4);
      return 0;
    }
    int i = Math.max(localOptions1.outWidth / 640, localOptions1.outHeight / 640);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(localOptions1.outWidth);
    arrayOfObject1[1] = Integer.valueOf(localOptions1.outHeight);
    arrayOfObject1[2] = Integer.valueOf(i);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "src w:%d h:%d samp:%d", arrayOfObject1);
    BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
    localOptions2.inPreferredConfig = Bitmap.Config.ARGB_8888;
    localOptions2.inSampleSize = i;
    h.a(localOptions2);
    Bitmap localBitmap1 = BitmapFactory.decodeFile(paramString1, localOptions2);
    if (localBitmap1 == null)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(i);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneUploadHDHeadImg", "decode file fail %d", arrayOfObject3);
      return 0 - j.qe();
    }
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(localBitmap1.getWidth());
    arrayOfObject2[1] = Integer.valueOf(localBitmap1.getHeight());
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "dest:w:%d h:%d", arrayOfObject2);
    Bitmap localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, 640, 640, true);
    if (localBitmap1 != localBitmap2)
      localBitmap1.recycle();
    if (localBitmap2 == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "Scale file fail");
      return 0 - j.qe();
    }
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(paramString2);
      localBitmap2.compress(Bitmap.CompressFormat.JPEG, 40, localFileOutputStream);
      localFileOutputStream.close();
      localBitmap2.recycle();
      return 0;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "open FileOutputStream fail");
      localBitmap2.recycle();
    }
    return 0 - j.qe();
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    if ((this.clm == null) || (this.clm.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "imgPath is null or length = 0");
      return -1;
    }
    if (!c.as(this.clm))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "The img does not exist, imgPath = " + this.clm);
      return -1;
    }
    if (this.ckU == 0)
      this.ckU = ((int)new File(this.clm).length());
    int i = Math.min(this.ckU - this.ckV, 8192);
    byte[] arrayOfByte = c.g(this.clm, this.ckV, i);
    if (arrayOfByte == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "readFromFile error");
      return -1;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(arrayOfByte.length);
    arrayOfObject[1] = Integer.valueOf(this.ckU);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadHDHeadImg", "doScene uploadLen:%d, total: %d", arrayOfObject);
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xw());
    localb.b(new xx());
    localb.es("/cgi-bin/micromsg-bin/uploadhdheadimg");
    localb.cN(157);
    localb.cO(46);
    localb.cP(1000000046);
    a locala = localb.wx();
    xw localxw = (xw)locala.wr();
    localxw.fAL = this.ckU;
    localxw.fEd = this.ckV;
    localxw.fLe = this.ckW;
    localxw.fAJ = new rv().bM(arrayOfByte);
    localxw.fYi = this.clo;
    return a(paramr, locala, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    if ((this.clm == null) || (this.clm.length() == 0))
      return com.tencent.mm.n.aa.cmi;
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    xx localxx = (xx)((a)paramaj).ws();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadHDHeadImg", "errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 4) && (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 4) || (paramInt2 == 5))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "ErrType:" + paramInt2);
      return;
    }
    int i = paramaj.wv().xm();
    int j = 0;
    if (i == -4)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneUploadHDHeadImg", "retcode == %d", arrayOfObject);
      j = 1;
    }
    if (j != 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "handleCertainError");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.ckV = localxx.fEd;
    if (this.ckV < this.ckU)
    {
      if (a(wM(), this.cjh) < 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "doScene again failed");
        this.cjh.a(3, -1, "", this);
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadHDHeadImg", "doScene again");
      return;
    }
    try
    {
      new File(this.clm).renameTo(new File(this.cln));
      be.uz().sr().set(12297, localxx.fYj);
      af.vJ().d(this.clp, h.su(this.cln));
      String str = v.th();
      if (!cj.hX(str))
      {
        x localx = new x();
        localx.setUsername(str);
        localx.Q(true);
        localx.cL(32);
        localx.bU(3);
        localx.cL(34);
        af.wm().a(localx);
      }
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadHDHeadImg", "rename temp file failed :" + localException.getMessage());
      this.cjh.a(3, -1, "", this);
    }
  }

  protected final void cancel()
  {
    super.cancel();
  }

  public final int getType()
  {
    return 157;
  }

  protected final int we()
  {
    return 200;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.ab
 * JD-Core Version:    0.6.2
 */
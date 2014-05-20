package com.tencent.mm.w;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.tencent.mm.an.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import junit.framework.Assert;

public final class g extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS ImgInfo ( id INTEGER PRIMARY KEY, msgSvrId INT, offset INT, totalLen INT, bigImgPath TEXT, thumbImgPath TEXT )", "CREATE TABLE IF NOT EXISTS ImgInfo2 ( id INTEGER PRIMARY KEY, msgSvrId INT, offset INT, totalLen INT, bigImgPath TEXT, thumbImgPath TEXT, createtime INT, msglocalid INT, status INT, nettimes INT, reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ", "CREATE INDEX IF NOT EXISTS  serverImgInfoIndex ON ImgInfo2 ( msgSvrId ) ", "CREATE INDEX IF NOT EXISTS  serverImgInfoHdIndex ON ImgInfo2 ( reserved1 ) ", "insert into imginfo2 (id,msgSvrId , offset , totalLen , bigImgPath , thumbImgPath) select id, msgSvrId, offset ,totallen , bigimgpath , thumbimgpath from imginfo; ", "delete from ImgInfo ; " };
  private com.tencent.mm.ap.i cjB = null;
  private com.tencent.mm.a.d ctg = new com.tencent.mm.a.d(40, new h(this));
  private List cth = new ArrayList();
  private Map cti = new HashMap();
  private Set ctj = new HashSet();
  private Handler ctk = new Handler(Looper.getMainLooper());
  private Map ctl = new HashMap();
  private int ctm = 1;
  private SoftReference ctn;

  public g(com.tencent.mm.ap.i parami)
  {
    this.cjB = parami;
    Cursor localCursor = this.cjB.a("ImgInfo2", null, null, null, null, "id ASC ");
    if ((localCursor.getCount() > 0) && (localCursor.moveToLast()))
      this.ctm = (1 + localCursor.getInt(0));
    localCursor.close();
    aa.w("MicroMsg.ImgInfoStorage", "loading new img id:" + this.ctm);
  }

  private e a(String paramString1, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, PInt paramPInt1, PInt paramPInt2, String paramString2)
  {
    if (!com.tencent.mm.a.c.as(paramString1))
      return null;
    int i = com.tencent.mm.sdk.platformtools.f.hH(paramString1) + paramInt3 * 90;
    String str1 = com.tencent.mm.a.f.h((paramString1 + System.currentTimeMillis()).getBytes());
    String str2 = j(str1, "", ".jpg");
    aa.d("MicroMsg.ImgInfoStorage", "insert : original img path = " + paramString1);
    BitmapFactory.Options localOptions1 = com.tencent.mm.sdk.platformtools.h.ss(paramString1);
    try
    {
      int k;
      if (ba.bt(al.getContext()))
      {
        int i19 = Integer.valueOf(com.tencent.mm.e.d.qA().getValue("CompressPicLevelForWifi")).intValue();
        j = i19;
        if ((j <= 10) || (j > 100))
          j = 70;
        k = 0;
      }
      while (true)
      {
        String str5;
        try
        {
          boolean bool1 = ba.bt(al.getContext());
          k = 0;
          if (bool1)
          {
            localObject = com.tencent.mm.e.d.qA().getValue("CompressResolutionForWifi");
            int i14 = ((String)localObject).indexOf("*");
            int i15 = 0;
            k = 0;
            if (-1 != i14)
            {
              k = Integer.valueOf(((String)localObject).substring(0, i14)).intValue();
              int i16 = Integer.valueOf(((String)localObject).substring(i14 + 1)).intValue();
              i15 = i16;
            }
            int i17 = i15;
            m = k;
            n = i17;
            if (m <= 0)
              m = 960;
            if (n <= 0)
              n = 960;
            if (m >= n)
              break label1338;
            if (!paramBoolean)
              continue;
            i2 = 0;
            i3 = 0;
            if (localOptions1 != null)
            {
              i2 = localOptions1.outWidth;
              i3 = localOptions1.outHeight;
              if (i2 >= i3)
                break label1323;
            }
            if ((paramInt1 != 0) || ((com.tencent.mm.a.c.ar(paramString1) <= 204800) && ((localOptions1 == null) || ((i2 <= m) && (i3 <= n)))))
              continue;
            if ((localOptions1 == null) || (localOptions1.outWidth >= localOptions1.outHeight))
              break label1312;
            i8 = m;
            if (com.tencent.mm.sdk.platformtools.h.a(paramString1, n, i8, Bitmap.CompressFormat.JPEG, j, str2))
              continue;
            aa.e("MicroMsg.ImgInfoStorage", "createThumbNail big pic fail");
            return null;
            if (ba.bp(al.getContext()))
            {
              j = Integer.valueOf(com.tencent.mm.e.d.qA().getValue("CompressPicLevelFor2G")).intValue();
              break;
            }
            int i18 = Integer.valueOf(com.tencent.mm.e.d.qA().getValue("CompressPicLevelFor3G")).intValue();
            j = i18;
            break;
          }
          boolean bool2 = ba.bp(al.getContext());
          k = 0;
          if (bool2)
          {
            localObject = com.tencent.mm.e.d.qA().getValue("CompressResolutionFor2G");
            continue;
          }
          String str6 = com.tencent.mm.e.d.qA().getValue("CompressResolutionFor3G");
          Object localObject = str6;
          continue;
        }
        catch (Exception localException2)
        {
          m = k;
          n = 0;
          continue;
          BitmapFactory.Options localOptions2 = com.tencent.mm.sdk.platformtools.h.ss(str2);
          Object[] arrayOfObject4 = new Object[9];
          arrayOfObject4[0] = Integer.valueOf(j);
          arrayOfObject4[1] = Integer.valueOf(i8);
          arrayOfObject4[2] = Integer.valueOf(n);
          arrayOfObject4[3] = Integer.valueOf(com.tencent.mm.a.c.ar(paramString1));
          arrayOfObject4[4] = Integer.valueOf(com.tencent.mm.a.c.ar(str2));
          int i9;
          if (localOptions1 != null)
          {
            i9 = localOptions1.outWidth;
            arrayOfObject4[5] = Integer.valueOf(i9);
            if (localOptions1 != null)
            {
              i10 = localOptions1.outHeight;
              arrayOfObject4[6] = Integer.valueOf(i10);
              if (localOptions2 == null)
                continue;
              i11 = localOptions2.outWidth;
              arrayOfObject4[7] = Integer.valueOf(i11);
              if (localOptions2 == null)
                continue;
              i12 = localOptions2.outHeight;
              arrayOfObject4[8] = Integer.valueOf(i12);
              aa.d("MicroMsg.ImgInfoStorage", "createThumbNail big pic ok, comLev:%d width:%d height:%d origLen:%d compressedLen:%d oriWidth:%d oriHeight:%d comWidth:%d comHeight:%d", arrayOfObject4);
              aa.d("MicroMsg.ImgInfoStorage", "insert: compressed bigImgPath = " + str2);
              if (((!v.cn(str2)) && (paramInt1 != 0)) || (!paramBoolean) || (i == 0) || (com.tencent.mm.sdk.platformtools.h.a(str2, i, Bitmap.CompressFormat.JPEG, 90, str2)))
                continue;
              aa.e("MicroMsg.ImgInfoStorage", "rotate big pic fail");
              return null;
            }
          }
          else
          {
            i9 = -1;
            continue;
          }
          int i10 = -1;
          continue;
          int i11 = -1;
          continue;
          int i12 = -1;
          continue;
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = Integer.valueOf(com.tencent.mm.a.c.ar(paramString1));
          if (localOptions1 != null)
          {
            i4 = localOptions1.outWidth;
            arrayOfObject1[1] = Integer.valueOf(i4);
            if (localOptions1 == null)
              continue;
            i5 = localOptions1.outHeight;
            arrayOfObject1[2] = Integer.valueOf(i5);
            aa.d("MicroMsg.ImgInfoStorage", "createThumbNail big pic no compress, origLen:%d oriWidth:%d oriHeight:%d", arrayOfObject1);
            com.tencent.mm.sdk.platformtools.m.f(paramString1, str2, false);
            continue;
          }
          int i4 = -1;
          continue;
          int i5 = -1;
          continue;
          String str3 = com.tencent.mm.a.f.h(System.currentTimeMillis().getBytes());
          String str4 = "THUMBNAIL_DIRPATH://th_" + str3;
          str5 = j(str4, "th_", "");
          if (paramBoolean)
          {
            if ((!cj.hX(paramString2)) && (com.tencent.mm.a.c.as(paramString2)))
              break label1292;
            int i7 = com.tencent.mm.sdk.platformtools.h.st(str2);
            long l = cj.FE();
            if (i7 > 0)
            {
              if (!com.tencent.mm.sdk.platformtools.h.a(str2, Bitmap.CompressFormat.JPEG, j(str3, "th_", ""), i7, i, paramPInt1, paramPInt2))
              {
                aa.e("MicroMsg.ImgInfoStorage", "createLongPictureThumbNail fail");
                return null;
              }
            }
            else if (!com.tencent.mm.sdk.platformtools.h.a(str2, 100, 100, Bitmap.CompressFormat.JPEG, 90, j(str3, "th_", ""), true, paramPInt1, paramPInt2))
            {
              aa.e("MicroMsg.ImgInfoStorage", "createThumbNail thumb fail");
              return null;
            }
            File localFile = new File(str5);
            if (localFile.exists())
            {
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = Long.valueOf(localFile.length());
              aa.e("MicroMsg.ImgInfoStorage", " thumbSize: %d", arrayOfObject2);
              com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
              Object[] arrayOfObject3 = new Object[4];
              arrayOfObject3[0] = Long.valueOf(localFile.length());
              arrayOfObject3[1] = Integer.valueOf(com.tencent.mm.a.c.ar(str2));
              arrayOfObject3[2] = Integer.valueOf(90);
              arrayOfObject3[3] = Long.valueOf(cj.O(l));
              localm.d(10921, arrayOfObject3);
              aa.d("MicroMsg.ImgInfoStorage", "insert: thumbName = " + str4);
            }
          }
          else
          {
            e locale = new e();
            locale.cL(-1);
            int i6 = this.ctm;
            this.ctm = (i6 + 1);
            locale.dz(i6);
            locale.setSource(paramInt2);
            if (paramBoolean)
            {
              locale.fR(str1 + ".jpg");
              locale.fS(str4);
              locale.cJ(com.tencent.mm.a.c.ar(str2));
            }
            locale.dx((int)cj.FC());
            aa.d("MicroMsg.ImgInfoStorage", "insert: compress img size = " + locale.vR());
            return locale;
          }
        }
        aa.e("MicroMsg.ImgInfoStorage", " thumbImg not exits");
        continue;
        label1292: com.tencent.mm.sdk.platformtools.m.f(paramString2, str5, false);
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        int j = 0;
        continue;
        label1312: int i8 = n;
        int n = m;
        continue;
        label1323: int i13 = i3;
        int i3 = i2;
        int i2 = i13;
        continue;
        label1338: int i1 = n;
        n = m;
        int m = i1;
      }
    }
  }

  private e a(String paramString, boolean paramBoolean, int paramInt1, int paramInt2, PInt paramPInt1, PInt paramPInt2)
  {
    return a(paramString, 0, paramBoolean, paramInt1, paramInt2, paramPInt1, paramPInt2, "");
  }

  private void d(String paramString, float paramFloat)
  {
    be.ut().o(new j(this, paramString, paramFloat));
  }

  public static String fV(String paramString)
  {
    return "THUMBNAIL_DIRPATH://th_" + paramString;
  }

  public final void AO()
  {
    aa.i("MicroMsg.ImgInfoStorage", "clearCacheMap");
    com.tencent.mm.a.d locald = this.ctg;
    new i(this);
    locald.nc();
  }

  public final List AP()
  {
    String str1 = "select * " + " FROM ImgInfo2";
    String str2 = str1 + " WHERE offset<totalLen ;";
    Cursor localCursor = this.cjB.rawQuery(str2, null);
    int i = localCursor.getCount();
    aa.d("MicroMsg.ImgInfoStorage", "getUnfinishInfo resCount:" + i);
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    if (j < i)
    {
      localCursor.moveToPosition(j);
      e locale1 = new e();
      locale1.convertFrom(localCursor);
      e locale2 = dH((int)locale1.AG());
      if (locale2 != null)
        if ((locale2.AH() != 0) || (locale2.AF() != 0))
          localArrayList.add(locale1);
      while (true)
      {
        j++;
        break;
        if ((locale1.AH() != 0) || (locale1.AF() != 0))
          localArrayList.add(locale1);
      }
    }
    localCursor.close();
    return localArrayList;
  }

  public final e E(long paramLong)
  {
    e locale = new e();
    com.tencent.mm.ap.i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    Cursor localCursor = locali.a("ImgInfo2", null, "id=?", arrayOfString, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locale.convertFrom(localCursor);
    }
    localCursor.close();
    return locale;
  }

  public final int a(long paramLong, e parame)
  {
    ContentValues localContentValues = parame.oa();
    com.tencent.mm.ap.i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    int i = locali.update("ImgInfo2", localContentValues, "id=?", arrayOfString);
    if (i != -1)
      Ei();
    return i;
  }

  public final long a(String paramString, int paramInt1, int paramInt2, int paramInt3, PString paramPString, PInt paramPInt1, PInt paramPInt2)
  {
    e locale3;
    long l2;
    if (paramInt1 == 0)
    {
      locale3 = a(paramString, 0, true, paramInt2, paramInt3, paramPInt1, paramPInt2, paramPString.value);
      if (locale3 == null)
        l2 = -1L;
    }
    do
    {
      do
      {
        return l2;
        paramPString.value = locale3.AJ();
        l2 = this.cjB.insert("ImgInfo2", "id", locale3.oa());
      }
      while (l2 == -1L);
      Ei();
      return l2;
      if (paramInt1 != 1)
        break;
      e locale1 = a(paramString, 1, true, paramInt2, paramInt3, paramPInt1, paramPInt2, paramPString.value);
      if (locale1 == null)
        return -1L;
      paramPString.value = locale1.AJ();
      locale1.dy(0);
      locale1.dA(0);
      long l1 = this.cjB.insert("ImgInfo2", "id", locale1.oa());
      e locale2 = a(paramString, false, paramInt2, paramInt3, new PInt(), new PInt());
      locale2.dB((int)l1);
      locale2.fR(locale1.AI());
      locale2.fS(locale1.AJ());
      locale2.cJ(0);
      l2 = this.cjB.insert("ImgInfo2", "id", locale2.oa());
    }
    while (l2 == -1L);
    Ei();
    return l2;
    Assert.assertTrue(false);
    return 0L;
  }

  public final long a(String paramString, int paramInt1, int paramInt2, PString paramPString, PInt paramPInt1, PInt paramPInt2)
  {
    e locale = a(paramString, true, paramInt1, paramInt2, paramPInt1, paramPInt2);
    long l;
    if (locale == null)
      l = -1L;
    do
    {
      return l;
      locale.setOffset(locale.vR());
      paramPString.value = locale.AJ();
      l = this.cjB.insert("ImgInfo2", "id", locale.oa());
    }
    while (l == -1L);
    Ei();
    return l;
  }

  public final long a(byte[] paramArrayOfByte, int paramInt1, boolean paramBoolean, String paramString1, int paramInt2, String paramString2, PString paramPString, PInt paramPInt1, PInt paramPInt2)
  {
    String str1 = "SERVERID://" + paramInt1;
    String str2 = com.tencent.mm.a.f.h(str1.getBytes());
    Bitmap localBitmap1;
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length >= 0))
    {
      localBitmap1 = com.tencent.mm.sdk.platformtools.h.cj(paramArrayOfByte);
      if (localBitmap1 == null)
        aa.e("MicroMsg.ImgInfoStorage", "create decodeByteArray failed: " + new String(paramArrayOfByte));
      if ((paramBoolean) || (localBitmap1 == null));
    }
    try
    {
      Bitmap localBitmap2 = com.tencent.mm.sdk.platformtools.h.a(localBitmap1, 200, 200);
      paramPInt1.value = localBitmap2.getWidth();
      paramPInt2.value = localBitmap2.getHeight();
      com.tencent.mm.sdk.platformtools.h.a(localBitmap2, 90, Bitmap.CompressFormat.JPEG, j(str2, "th_", ""), true);
      locale = new e();
      if (!cj.hX(paramString1))
      {
        locale.setOffset(paramInt2);
        locale.cJ(paramInt2);
        locale.cL(-1);
        int i = this.ctm;
        this.ctm = (i + 1);
        locale.dz(i);
        locale.fR(paramString1);
        locale.fS("THUMBNAIL_DIRPATH://th_" + str2);
        paramPString.value = locale.AJ();
        if (paramBoolean)
        {
          locale.dA(0);
          locale.fT(paramString2);
          locale.dx((int)cj.FC());
          long l = this.cjB.insert("ImgInfo2", "id", locale.oa());
          if (l != -1L)
            Ei();
          return l;
        }
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        e locale;
        aa.e("MicroMsg.ImgInfoStorage", "create thumbnail from byte failed: " + str2 + " " + new String(paramArrayOfByte));
        continue;
        locale.dA(paramInt1);
        continue;
        paramString1 = str1;
      }
    }
  }

  public final long a(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean, String paramString, PString paramPString, PInt paramPInt1, PInt paramPInt2)
  {
    return a(paramArrayOfByte, paramInt, paramBoolean, "", 0, paramString, paramPString, paramPInt1, paramPInt2);
  }

  public final Bitmap a(String paramString, float paramFloat, Context paramContext)
  {
    Bitmap localBitmap1;
    if ((paramString == null) || (paramString.length() <= 0))
      localBitmap1 = null;
    String str;
    do
    {
      return localBitmap1;
      str = paramString.trim();
      localBitmap1 = (Bitmap)this.ctg.get(str);
    }
    while ((localBitmap1 != null) && (!localBitmap1.isRecycled()));
    Bitmap localBitmap2 = com.tencent.mm.sdk.platformtools.e.e(str, paramFloat);
    if (localBitmap2 != null)
    {
      int i = localBitmap2.getWidth();
      int j = localBitmap2.getHeight();
      int k = com.tencent.mm.sdk.platformtools.e.a(paramContext, 100.0F);
      float f = i / k;
      Bitmap localBitmap3 = Bitmap.createScaledBitmap(localBitmap2, k, (int)(j / f), true);
      if (localBitmap2 != localBitmap3)
        localBitmap2.recycle();
      aa.d("MicroMsg.ImgInfoStorage", "cached file " + str);
      this.ctg.f(str, localBitmap3);
      return localBitmap3;
    }
    return localBitmap2;
  }

  public final Bitmap a(String paramString, float paramFloat, boolean paramBoolean)
  {
    return a(paramString, false, paramFloat, paramBoolean, false);
  }

  public final Bitmap a(String paramString, boolean paramBoolean1, float paramFloat, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i = 150;
    if (!paramBoolean1)
      paramString = fX(paramString);
    Bitmap localBitmap1;
    if (paramString == null)
      localBitmap1 = null;
    boolean bool;
    Bitmap localBitmap2;
    do
    {
      do
      {
        return localBitmap1;
        localBitmap1 = (Bitmap)this.ctg.get(paramString);
        if (localBitmap1 == null)
        {
          Object[] arrayOfObject = new Object[2];
          if (localBitmap1 != null)
            break;
          bool = true;
          arrayOfObject[0] = Boolean.valueOf(bool);
          arrayOfObject[1] = paramString;
          aa.g("MicroMsg.ImgInfoStorage", "bm is null:%b,  url:%s", arrayOfObject);
        }
      }
      while ((localBitmap1 != null) && (!localBitmap1.isRecycled()));
      localBitmap2 = com.tencent.mm.sdk.platformtools.e.e(paramString, paramFloat);
    }
    while (localBitmap2 == null);
    long l = System.currentTimeMillis();
    int j = (int)(paramFloat * localBitmap2.getWidth());
    int k = (int)(paramFloat * localBitmap2.getHeight());
    if ((paramBoolean3) && ((j > i) || (k > i)))
      if (j > k)
        k = k * 150 / j;
    while (true)
    {
      try
      {
        Bitmap localBitmap5 = Bitmap.createScaledBitmap(localBitmap2, i, k, true);
        localBitmap3 = localBitmap5;
        if (localBitmap2 != localBitmap3)
          localBitmap2.recycle();
        if (paramBoolean2)
        {
          localBitmap4 = com.tencent.mm.sdk.platformtools.h.a(localBitmap3, true, a.fromDPToPix(al.getContext(), 3));
          localBitmap3.recycle();
          aa.v("MicroMsg.ImgInfoStorage", "bitmap time:" + (System.currentTimeMillis() - l));
          aa.d("MicroMsg.ImgInfoStorage", "cached file " + paramString);
          this.ctg.f(paramString, localBitmap4);
          return localBitmap4;
          bool = false;
          break;
          if (j == k)
          {
            k = i;
            continue;
          }
          int m = j * 150 / k;
          int n = i;
          i = m;
          k = n;
          continue;
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        Bitmap localBitmap3 = localBitmap2;
        continue;
        Bitmap localBitmap4 = localBitmap3;
        continue;
      }
      i = j;
    }
  }

  public final String a(byte[] paramArrayOfByte, boolean paramBoolean, Bitmap.CompressFormat paramCompressFormat)
  {
    int i = 150;
    if (cj.A(paramArrayOfByte))
    {
      aa.e("MicroMsg.ImgInfoStorage", "save dir thumb error, thumbBuf is null");
      return null;
    }
    String str1 = com.tencent.mm.a.f.h(cj.FD().getBytes());
    String str2 = j(str1, "th_", "");
    String str3 = str2 + ".tmp";
    aa.d("MicroMsg.ImgInfoStorage", "saveDirThumb, fullPath = " + str2);
    while (true)
    {
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(str3);
        localFileOutputStream.write(paramArrayOfByte);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        int j;
        if (paramBoolean)
        {
          j = i;
          break label340;
          com.tencent.mm.sdk.platformtools.h.a(com.tencent.mm.sdk.platformtools.h.a(str3, j, i, false), 90, paramCompressFormat, str2, true);
          File localFile3;
          return "THUMBNAIL_DIRPATH://th_" + str1;
        }
        else
        {
          j = 100;
          break label340;
          i = 100;
          continue;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ImgInfoStorage", "create thumbnail from byte failed: th_" + str1 + ", ex = " + localException.getMessage());
        File localFile2;
        return null;
      }
      finally
      {
        File localFile1 = new File(str3);
        if (localFile1.exists())
        {
          aa.d("MicroMsg.ImgInfoStorage", "create thumbnail, delete tmp file");
          localFile1.delete();
        }
      }
      label340: if (!paramBoolean);
    }
  }

  public final boolean a(ImageView paramImageView, String paramString, float paramFloat, int paramInt1, int paramInt2)
  {
    if (cj.hX(paramString))
    {
      aa.b("MicroMsg.ImgInfoStorage", "invalid uri is %s", new Object[] { paramString });
      return false;
    }
    if ((paramString != null) && (this.ctl.containsKey(paramString)));
    String str;
    for (Object localObject = (String)this.ctl.get(paramString); ; localObject = str)
    {
      Bitmap localBitmap = (Bitmap)this.ctg.get(localObject);
      if ((localBitmap == null) || (localBitmap.isRecycled()))
        break;
      paramImageView.setImageBitmap(localBitmap);
      if (paramImageView.getLayoutParams().width != -2)
        paramImageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      float f1 = localBitmap.getWidth() / localBitmap.getHeight();
      float f2 = localBitmap.getHeight() / localBitmap.getWidth();
      if ((f1 >= 2.0F) || (f2 >= 2.0F))
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(localBitmap.getWidth());
        arrayOfObject3[1] = Integer.valueOf(localBitmap.getHeight());
        aa.e("MicroMsg.ImgInfoStorage", "bm: w:%d, h:%d ", arrayOfObject3);
        paramImageView.setScaleType(ImageView.ScaleType.CENTER);
      }
      return true;
      str = fX(paramString);
      if (paramString == null)
        return false;
      this.ctl.put(paramString, str);
    }
    if ((this.ctn == null) || (this.ctn.get() == null))
      this.ctn = new SoftReference(new ColorDrawable(-1118482));
    paramImageView.setImageDrawable((ColorDrawable)this.ctn.get());
    int i;
    int j;
    if (paramInt1 > 0)
    {
      i = paramInt1;
      j = (int)(paramFloat * i);
      if (paramInt2 <= 0)
        break label503;
    }
    int m;
    label503: for (int k = paramInt2; ; k = 75)
    {
      paramImageView.setLayoutParams(new FrameLayout.LayoutParams(j, (int)(paramFloat * k)));
      this.ctg.remove(localObject);
      m = paramImageView.hashCode();
      Iterator localIterator = this.cth.iterator();
      l locall2;
      do
      {
        if (!localIterator.hasNext())
          break;
        locall2 = (l)localIterator.next();
      }
      while (m != locall2.cts);
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = Integer.valueOf(locall2.cts);
      arrayOfObject2[1] = locall2.url;
      arrayOfObject2[2] = Integer.valueOf(paramInt1);
      arrayOfObject2[3] = Integer.valueOf(paramInt2);
      aa.d("MicroMsg.ImgInfoStorage", "setbitmapFromUri  [%d, %s], size[%d,%d]", arrayOfObject2);
      locall2.url = ((String)localObject);
      if (!this.ctj.contains(localObject))
      {
        this.ctj.add(localObject);
        d((String)localObject, paramFloat);
      }
      return false;
      i = 100;
      break;
    }
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Integer.valueOf(m);
    arrayOfObject1[1] = localObject;
    arrayOfObject1[2] = Integer.valueOf(paramInt1);
    arrayOfObject1[3] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.ImgInfoStorage", "setbitmapFromUri addIV: [%d, %s], size[%d,%d]", arrayOfObject1);
    this.cti.put(Integer.valueOf(m), new WeakReference(paramImageView));
    l locall1 = new l(m, (String)localObject);
    this.cth.add(locall1);
    if (!this.ctj.contains(localObject))
    {
      this.ctj.add(localObject);
      d((String)localObject, paramFloat);
    }
    return false;
  }

  public final Bitmap b(String paramString, float paramFloat)
  {
    return a(paramString, paramFloat, true);
  }

  public final Bitmap c(String paramString, float paramFloat)
  {
    return a(paramString, paramFloat, false);
  }

  public final void dC(int paramInt)
  {
    e locale1 = dE(paramInt);
    if ((locale1 == null) || (locale1.AG() != paramInt));
    e locale2;
    do
    {
      do
      {
        return;
        com.tencent.mm.a.c.deleteFile(j(locale1.AI(), "", ""));
        com.tencent.mm.a.c.deleteFile(j(locale1.AJ(), "", ""));
        com.tencent.mm.ap.i locali1 = this.cjB;
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = String.valueOf(paramInt);
        locali1.delete("ImgInfo2", "id=?", arrayOfString1);
      }
      while (!locale1.AM());
      locale2 = dE(locale1.AK());
    }
    while (locale2 == null);
    com.tencent.mm.a.c.deleteFile(j(locale2.AI(), "", ""));
    com.tencent.mm.a.c.deleteFile(j(locale2.AJ(), "", ""));
    com.tencent.mm.ap.i locali2 = this.cjB;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = locale2.AG();
    locali2.delete("ImgInfo2", "id=?", arrayOfString2);
  }

  public final void dD(int paramInt)
  {
    e locale1 = dF(paramInt);
    if ((locale1 == null) || (locale1.AH() != paramInt));
    e locale2;
    do
    {
      do
      {
        return;
        com.tencent.mm.a.c.deleteFile(j(locale1.AI(), "", ""));
        com.tencent.mm.a.c.deleteFile(j(locale1.AJ(), "", ""));
        com.tencent.mm.ap.i locali1 = this.cjB;
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = String.valueOf(paramInt);
        locali1.delete("ImgInfo2", "msgSvrId=?", arrayOfString1);
      }
      while (!locale1.AM());
      locale2 = dE(locale1.AK());
    }
    while (locale2 == null);
    com.tencent.mm.a.c.deleteFile(j(locale2.AI(), "", ""));
    com.tencent.mm.a.c.deleteFile(j(locale2.AJ(), "", ""));
    com.tencent.mm.ap.i locali2 = this.cjB;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = locale2.AG();
    locali2.delete("ImgInfo2", "id=?", arrayOfString2);
  }

  public final e dE(int paramInt)
  {
    e locale = new e();
    com.tencent.mm.ap.i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = locali.a("ImgInfo2", null, "id=?", arrayOfString, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locale.convertFrom(localCursor);
    }
    localCursor.close();
    return locale;
  }

  public final e dF(int paramInt)
  {
    e locale = new e();
    com.tencent.mm.ap.i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = locali.a("ImgInfo2", null, "msgSvrId=?", arrayOfString, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locale.convertFrom(localCursor);
    }
    localCursor.close();
    return locale;
  }

  public final e dG(int paramInt)
  {
    e locale = new e();
    com.tencent.mm.ap.i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = locali.a("ImgInfo2", null, "msglocalid=?", arrayOfString, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToLast();
      locale.convertFrom(localCursor);
    }
    localCursor.close();
    return locale;
  }

  public final e dH(int paramInt)
  {
    com.tencent.mm.ap.i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = locali.a("ImgInfo2", null, "reserved1=?", arrayOfString, null, null);
    if (localCursor == null)
    {
      aa.e("MicroMsg.ImgInfoStorage", "getByHdId : cursor is null");
      return null;
    }
    if (localCursor.getCount() <= 0)
    {
      aa.i("MicroMsg.ImgInfoStorage", "getByHdId : cursor getCount <= 0");
      localCursor.close();
      return null;
    }
    e locale = new e();
    localCursor.moveToFirst();
    locale.convertFrom(localCursor);
    localCursor.close();
    return locale;
  }

  public final String fU(String paramString)
  {
    Object localObject = "";
    String str3;
    if (paramString.startsWith("SERVERID://"))
      str3 = paramString.substring(11);
    while (true)
    {
      try
      {
        String str4 = dF(Integer.valueOf(str3).intValue()).AI();
        localObject = str4;
        String str1 = be.uz().sB();
        String str2 = be.uz().sC();
        if (cj.hX((String)localObject))
          return com.tencent.mm.sdk.platformtools.l.a(str1, str2, "th_", paramString, "");
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aa.e("MicroMsg.ImgInfoStorage", "read img buf failed: " + localNumberFormatException.getMessage());
        return null;
      }
      paramString = (String)localObject;
    }
  }

  public final String fW(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    String str1 = "";
    Object localObject = paramString.trim();
    String str2;
    if (((String)localObject).startsWith("THUMBNAIL://"))
      str2 = ((String)localObject).substring(12);
    while (true)
    {
      try
      {
        String str3 = dE(Integer.valueOf(str2).intValue()).AJ();
        localObject = str3;
        return j((String)localObject, str1, "");
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aa.e("MicroMsg.ImgInfoStorage", "read img buf failed: " + localNumberFormatException.getMessage());
        return null;
      }
      if (((String)localObject).startsWith("THUMBNAIL_DIRPATH://"))
      {
        localObject = ((String)localObject).substring(23);
        str1 = "th_";
      }
    }
  }

  public final String fX(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    Object localObject = paramString.trim();
    if (((String)localObject).startsWith("THUMBNAIL://"))
      str1 = ((String)localObject).substring(12);
    while (!((String)localObject).startsWith("THUMBNAIL_DIRPATH://"))
      try
      {
        String str1;
        String str2 = dE(Integer.valueOf(str1).intValue()).AJ();
        localObject = str2;
        return j((String)localObject, "", "");
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aa.e("MicroMsg.ImgInfoStorage", "read img buf failed: " + localNumberFormatException.getMessage());
        return null;
      }
    return j(((String)localObject).substring(20).substring(3), "th_", "");
  }

  public final e g(ak paramak)
  {
    e locale = dG((int)paramak.Bo());
    if ((locale == null) || (locale.AG() == 0L))
    {
      locale = dF(paramak.AH());
      if ((locale == null) || (locale.AG() == 0L))
      {
        aa.e("MicroMsg.ImgInfoStorage", "deleteByMsg can't find correspond imgInfo");
        locale = null;
      }
    }
    return locale;
  }

  public final void h(ak paramak)
  {
    e locale1 = g(paramak);
    if ((locale1 == null) || (locale1.AG() == 0L))
      aa.e("MicroMsg.ImgInfoStorage", "deleteByMsg can't find correspond imgInfo");
    e locale2;
    do
    {
      do
      {
        return;
        com.tencent.mm.a.c.deleteFile(j(locale1.AI(), "", ""));
        com.tencent.mm.a.c.deleteFile(j(locale1.AJ(), "", ""));
        com.tencent.mm.ap.i locali1 = this.cjB;
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = locale1.AG();
        locali1.delete("ImgInfo2", "id=?", arrayOfString1);
      }
      while (!locale1.AM());
      locale2 = dE(locale1.AK());
    }
    while (locale2 == null);
    com.tencent.mm.a.c.deleteFile(j(locale2.AI(), "", ""));
    com.tencent.mm.a.c.deleteFile(j(locale2.AJ(), "", ""));
    com.tencent.mm.ap.i locali2 = this.cjB;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = locale2.AG();
    locali2.delete("ImgInfo2", "id=?", arrayOfString2);
  }

  public final String j(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = "";
    String str3;
    if (paramString1.startsWith("SERVERID://"))
      str3 = paramString1.substring(11);
    while (true)
    {
      try
      {
        String str4 = dF(Integer.valueOf(str3).intValue()).AI();
        localObject = str4;
        if (paramString1.startsWith("THUMBNAIL_DIRPATH://"))
        {
          paramString1 = paramString1.substring(23);
          paramString2 = "th_";
        }
        String str1 = be.uz().sB();
        String str2 = be.uz().sC();
        if (cj.hX((String)localObject))
          return com.tencent.mm.sdk.platformtools.l.a(str1, str2, paramString2, paramString1, paramString3);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aa.e("MicroMsg.ImgInfoStorage", "read img buf failed: " + localNumberFormatException.getMessage());
        return null;
      }
      paramString1 = (String)localObject;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.g
 * JD-Core Version:    0.6.2
 */
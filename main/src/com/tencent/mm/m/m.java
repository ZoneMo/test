package com.tencent.mm.m;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Looper;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.sdk.platformtools.l;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

public final class m
{
  private static int ckA = 150;
  private static int ckB = 150;
  static final Map ckC;
  private static a ckG = new a(ckB);
  private am ckD = new n(this);
  private Vector ckE = new Vector();
  private final p ckF = new o(this);
  private String ckH = "";

  static
  {
    HashMap localHashMap = new HashMap();
    ckC = localHashMap;
    localHashMap.put("voipapp", "avatar/default_voip.png");
    ckC.put("qqmail", "avatar/default_qqmail.png");
    ckC.put("fmessage", "avatar/default_fmessage.png");
    ckC.put("tmessage", "avatar/default_tmessage.png");
    ckC.put("qmessage", "avatar/default_qmessage.png");
    ckC.put("qqsync", "avatar/default_qqsync.png");
    ckC.put("floatbottle", "avatar/default_bottle.png");
    ckC.put("lbsapp", "avatar/default_nearby.png");
    ckC.put("shakeapp", "avatar/default_shake.png");
    ckC.put("medianote", "avatar/default_medianote.png");
    ckC.put("qqfriend", "avatar/default_qqfriend.png");
    ckC.put("masssendapp", "avatar/default_masssend.png");
    ckC.put("feedsapp", "avatar/default_feedsapp.png");
    ckC.put("facebookapp", "avatar/default_facebookapp.png");
    ckC.put("blogapp", "avatar/default_blogapp.png");
    ckC.put("newsapp", "avatar/default_readerapp.png");
    ckC.put("helper_entry", "avatar/default_PluginForContractIcon.png");
    ckC.put("voicevoipapp", "avatar/default_voicevoip.png");
    ckC.put("voiceinputapp", "avatar/default_voiceinput.png");
    ckC.put("officialaccounts", "avatar/default_brand_contact.png");
    ckC.put("service_officialaccounts", "avatar/default_servicebrand_contact.png");
    ckC.put("googlecontact", "avatar/default_googlecontact.png");
    ckC.put("linkedinplugin", "avatar/default_linkedin.png");
  }

  public m(String paramString)
  {
    reset();
    this.ckH = paramString;
    this.ckD.a(this.ckF, null);
  }

  private static boolean a(Bitmap paramBitmap)
  {
    return (paramBitmap != null) && (!paramBitmap.isRecycled());
  }

  private boolean a(String paramString, Bitmap paramBitmap, int paramInt)
  {
    if (!a(paramBitmap))
      return false;
    Object localObject;
    if ((paramBitmap.getWidth() == 96) && (paramBitmap.getHeight() == 96))
    {
      localObject = paramBitmap;
      if ((localObject == null) || (localObject == paramBitmap))
        break label146;
      paramBitmap.recycle();
    }
    while (true)
    {
      while (paramInt > 0)
      {
        if (paramInt > 1)
          paramInt = 1;
        localObject = h.a((Bitmap)localObject, true, paramInt, true);
        if (!a((Bitmap)localObject))
        {
          return false;
          try
          {
            Bitmap localBitmap = Bitmap.createScaledBitmap(paramBitmap, 96, 96, true);
            localObject = localBitmap;
          }
          catch (OutOfMemoryError localOutOfMemoryError)
          {
            aa.b("MicroMsg.AvatarStorage", "kevin updateAvatar fail  s% ", new Object[] { paramString });
            if (a(paramBitmap))
              paramBitmap.recycle();
            return false;
          }
        }
      }
      c(paramString, (Bitmap)localObject);
      q.e(h(paramString, false), (Bitmap)localObject);
      return true;
      label146: localObject = paramBitmap;
    }
  }

  private WeakReference c(p paramp)
  {
    Vector localVector = this.ckE;
    int i = 0;
    try
    {
      while (i < this.ckE.size())
      {
        WeakReference localWeakReference = (WeakReference)this.ckE.get(i);
        if (localWeakReference != null)
        {
          p localp = (p)localWeakReference.get();
          if ((localp != null) && (localp.equals(paramp)))
            return localWeakReference;
        }
        i++;
      }
      return null;
    }
    finally
    {
    }
  }

  public static Bitmap ec(String paramString)
  {
    if (cj.hX(paramString));
    Bitmap localBitmap;
    do
    {
      return null;
      localBitmap = ckG.dO(paramString);
    }
    while (localBitmap == null);
    if (localBitmap.isRecycled())
    {
      ckG.remove(paramString);
      return null;
    }
    return localBitmap;
  }

  public static Bitmap eh(String paramString)
  {
    String str = (String)ckC.get(paramString);
    try
    {
      af.wl();
      Bitmap localBitmap2 = h.decodeStream(af.getContext().getAssets().open(str));
      localBitmap1 = localBitmap2;
      return h.a(localBitmap1, true, 1.0F, true);
    }
    catch (IOException localIOException)
    {
      while (true)
        Bitmap localBitmap1 = null;
    }
  }

  private static Bitmap q(byte[] paramArrayOfByte)
  {
    Bitmap localBitmap3;
    if (cj.A(paramArrayOfByte))
    {
      localBitmap3 = null;
      return localBitmap3;
    }
    long l1 = cj.FE();
    Bitmap localBitmap1 = h.decodeByteArray(paramArrayOfByte, 96, 96);
    if (localBitmap1 == null)
    {
      aa.e("MicroMsg.AvatarStorage", "updating avatar decode failed");
      return null;
    }
    Bitmap localBitmap2;
    try
    {
      Bitmap localBitmap4 = Bitmap.createScaledBitmap(localBitmap1, 96, 96, true);
      localBitmap2 = localBitmap4;
      if (localBitmap2 == null)
      {
        aa.e("MicroMsg.AvatarStorage", "updating avatar decode failed");
        return null;
      }
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
        localBitmap2 = null;
      if (localBitmap2 == null)
        break label146;
    }
    if (localBitmap1 != localBitmap2)
      localBitmap1.recycle();
    while (true)
    {
      localBitmap3 = h.a(localBitmap2, true, 1.0F, true);
      long l2 = cj.O(l1);
      if (l2 <= 30L)
        break;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l2);
      aa.c("MicroMsg.AvatarStorage", "update avatar cost=%d", arrayOfObject);
      return localBitmap3;
      label146: localBitmap2 = localBitmap1;
    }
  }

  public static void reset()
  {
    if (ckG == null)
      ckG = new a(ckB);
  }

  public final Bitmap K(Context paramContext)
  {
    paramContext.getResources();
    Bitmap localBitmap = ec("I_AM_NO_SDCARD_USER_NAME");
    if ((!a(localBitmap)) && (localBitmap != null))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Boolean.valueOf(localBitmap.isRecycled());
      arrayOfObject[1] = "I_AM_NO_SDCARD_USER_NAME";
      aa.d("MicroMsg.AvatarStorage", "not cached, recycled=%b, reload=%s", arrayOfObject);
      localBitmap = h.a(localBitmap, true, 1.0F);
      c("I_AM_NO_SDCARD_USER_NAME", localBitmap);
    }
    return localBitmap;
  }

  public final void a(p paramp)
  {
    synchronized (this.ckE)
    {
      this.ckE.add(new WeakReference(paramp));
      return;
    }
  }

  public final Bitmap b(String paramString, byte[] paramArrayOfByte)
  {
    k localk = new k();
    Bitmap localBitmap = q(paramArrayOfByte);
    long l1 = localk.qh();
    if (!a(localBitmap))
    {
      aa.b("MicroMsg.AvatarStorage", "decode failed: %s", new Object[] { paramString });
      return null;
    }
    long l2 = localk.qh();
    q.e(h(paramString, false), localBitmap);
    long l3 = localk.qh();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Long.valueOf(l1);
    arrayOfObject[2] = Long.valueOf(l2);
    arrayOfObject[3] = Long.valueOf(l3);
    aa.e("MicroMsg.AvatarStorage", "dkavatar save avatar: %s %d %d %d", arrayOfObject);
    return localBitmap;
  }

  public final void b(p paramp)
  {
    synchronized (this.ckE)
    {
      this.ckE.remove(c(paramp));
      return;
    }
  }

  public final void c(String paramString, Bitmap paramBitmap)
  {
    ckG.b(paramString, paramBitmap);
    this.ckD.ah(paramString);
    this.ckD.Ei();
    aa.e("MicroMsg.AvatarStorage", "setToCache %s", new Object[] { paramString });
  }

  public final boolean c(String paramString, byte[] paramArrayOfByte)
  {
    Bitmap localBitmap = q(paramArrayOfByte);
    if (!a(localBitmap))
    {
      aa.b("MicroMsg.AvatarStorage", "decode failed: %s", new Object[] { paramString });
      return false;
    }
    c(paramString, localBitmap);
    q.e(h(paramString, false), localBitmap);
    return true;
  }

  @Deprecated
  public final void d(p paramp)
  {
    this.ckD.a(paramp, Looper.getMainLooper());
  }

  public final boolean d(String paramString, Bitmap paramBitmap)
  {
    return a(paramString, paramBitmap, 1);
  }

  @Deprecated
  public final void e(p paramp)
  {
    this.ckD.remove(paramp);
  }

  public final boolean ed(String paramString)
  {
    boolean bool1 = q.ek(h(paramString, false));
    boolean bool2 = false;
    if (bool1)
      bool2 = true;
    return bool2;
  }

  public final Bitmap ee(String paramString)
  {
    Bitmap localBitmap = q.z(h(paramString, false), paramString);
    if (a(localBitmap))
      return localBitmap;
    return null;
  }

  final String ef(String paramString)
  {
    return f.h(c.g(h(paramString, true), 0, -1));
  }

  public final Bitmap eg(String paramString)
  {
    aa.e("MicroMsg.AvatarStorage", "getHDBitmap user:%s", new Object[] { paramString });
    if (cj.hX(paramString))
      return null;
    return h.w(h(paramString, true), 480, 480);
  }

  public final String h(String paramString, boolean paramBoolean)
  {
    if (cj.hX(paramString))
      return null;
    String str1 = this.ckH;
    StringBuilder localStringBuilder = new StringBuilder("user_");
    if (paramBoolean);
    for (String str2 = "hd_"; ; str2 = "")
      return l.a(str1, str2, f.h(paramString.getBytes()), ".png", 1);
  }

  public final boolean i(String paramString, boolean paramBoolean)
  {
    String str = h(paramString, paramBoolean);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Boolean.valueOf(paramBoolean);
    arrayOfObject[2] = str;
    aa.e("MicroMsg.AvatarStorage", "removeavatar: %s, hd: %b, path:%s", arrayOfObject);
    if (!paramBoolean)
    {
      q.el(str);
      return true;
    }
    c.deleteFile(str);
    return true;
  }

  public final Bitmap l(String paramString, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.AvatarStorage", "getHDBitmap user:%s, width:%d, height:%d", arrayOfObject);
    if (cj.hX(paramString))
      return null;
    return h.w(h(paramString, true), paramInt1, paramInt2);
  }

  public final boolean y(String paramString1, String paramString2)
  {
    while (true)
    {
      int m;
      try
      {
        BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
        localOptions1.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(paramString1, localOptions1);
        int i = localOptions1.outWidth;
        int j = localOptions1.outHeight;
        int k;
        int i2;
        int i3;
        if (j > i)
        {
          m = 96;
          k = i * 96 / j;
          if (96 - k <= 1)
            break label391;
          n = m;
          i1 = 0;
          Object[] arrayOfObject = new Object[5];
          arrayOfObject[0] = Integer.valueOf(i);
          arrayOfObject[1] = Integer.valueOf(j);
          arrayOfObject[2] = Integer.valueOf(k);
          arrayOfObject[3] = Integer.valueOf(n);
          arrayOfObject[4] = Integer.valueOf(i1);
          aa.e("MicroMsg.AvatarStorage", "inJustDecodeBounds old [w:%d h:%d]  new [w:%d h:%d] corner:%d", arrayOfObject);
          BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
          localOptions2.inPreferredConfig = Bitmap.Config.ARGB_8888;
          localOptions2.inSampleSize = Math.max(i / k, j / n);
          h.a(localOptions2);
          Bitmap localBitmap1 = BitmapFactory.decodeFile(paramString1, localOptions2);
          Bitmap localBitmap2 = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
          Canvas localCanvas = new Canvas(localBitmap2);
          Matrix localMatrix = new Matrix();
          i2 = localBitmap1.getWidth();
          i3 = localBitmap1.getHeight();
          if ((i2 <= 96) && (i3 <= 96))
          {
            f2 = 1.0F;
            float f3 = (int)(0.5F + 0.5F * (96.0F - f2 * i2));
            float f4 = (int)(0.5F + 0.5F * (96.0F - f2 * i3));
            localMatrix.setScale(f2, f2);
            localMatrix.postTranslate(f3, f4);
            localCanvas.drawBitmap(localBitmap1, localMatrix, null);
            localBitmap1.recycle();
            return a(paramString2, localBitmap2, i1);
          }
        }
        else
        {
          k = 96;
          m = j * 96 / i;
          if (96 - m <= 1)
            break label391;
          n = m;
          i1 = 0;
          continue;
        }
        float f1 = Math.min(96.0F / i2, 96.0F / i3);
        float f2 = f1;
        continue;
      }
      catch (Exception localException)
      {
        return false;
      }
      label391: int n = m;
      int i1 = 1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.m
 * JD-Core Version:    0.6.2
 */
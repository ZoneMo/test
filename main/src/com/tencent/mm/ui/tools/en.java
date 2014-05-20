package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class en
{
  private static HashMap dmR = new HashMap();

  public static void a(com.tencent.mm.plugin.webview.stub.al paramal, Object[] paramArrayOfObject)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramArrayOfObject == null) || (paramArrayOfObject.length == 0))
      return;
    int i = 0;
    try
    {
      while (i < paramArrayOfObject.length)
      {
        localArrayList.add(String.valueOf(paramArrayOfObject[i]));
        i++;
      }
      paramal.c(10643, localArrayList);
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.WebView.RemoteUtil", "kvReport, ex = " + localException.getMessage());
    }
  }

  public static Bitmap nb(String paramString)
  {
    WeakReference localWeakReference = (WeakReference)dmR.get(paramString);
    if ((localWeakReference != null) && (localWeakReference.get() != null) && (!((Bitmap)localWeakReference.get()).isRecycled()))
      return (Bitmap)localWeakReference.get();
    Bitmap localBitmap1 = nc(paramString);
    if (localBitmap1 != null)
    {
      dmR.put(paramString, new WeakReference(localBitmap1));
      return localBitmap1;
    }
    try
    {
      Bitmap localBitmap2 = h.a(com.tencent.mm.sdk.platformtools.al.getContext().getAssets().open("avatar/default_nor_avatar.png"), a.getDensity(null));
      return localBitmap2;
    }
    catch (Exception localException)
    {
    }
    return localBitmap1;
  }

  private static Bitmap nc(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    String str = paramString + ".bm";
    try
    {
      File localFile = new File(str);
      if (!localFile.exists())
      {
        aa.d("MicroMsg.WebView.RemoteUtil", "small bm not exsit");
        return null;
      }
      int i = (int)localFile.length();
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(i);
      arrayOfObject1[1] = str;
      aa.e("MicroMsg.WebView.RemoteUtil", "get bm size:%d path:%s", arrayOfObject1);
      if (i <= 0)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(i);
        aa.b("MicroMsg.WebView.RemoteUtil", "get small bm invalid size:%d", arrayOfObject2);
        return null;
      }
      FileInputStream localFileInputStream = new FileInputStream(str);
      ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(i);
      localByteBuffer.position(0);
      FileChannel localFileChannel = localFileInputStream.getChannel();
      localFileChannel.read(localByteBuffer);
      localFileChannel.close();
      localFileInputStream.close();
      localByteBuffer.position(0);
      try
      {
        Bitmap localBitmap2 = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        localBitmap2.copyPixelsFromBuffer(localByteBuffer);
        return localBitmap2;
      }
      catch (Exception localException2)
      {
        aa.e("MicroMsg.WebView.RemoteUtil", "decode as ARGB_8888 failed" + localException2.getMessage());
        try
        {
          Bitmap localBitmap1 = Bitmap.createBitmap(96, 96, Bitmap.Config.RGB_565);
          localBitmap1.copyPixelsFromBuffer(localByteBuffer);
          return localBitmap1;
        }
        catch (Exception localException3)
        {
          aa.e("MicroMsg.WebView.RemoteUtil", "decode as RGB_565 failed:" + localException3.getMessage());
          return null;
        }
      }
    }
    catch (Exception localException1)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.en
 * JD-Core Version:    0.6.2
 */
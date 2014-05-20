package com.tencent.mm.plugin.ext.provider;

import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.mm.ap.e;
import com.tencent.mm.c.a.ah;
import com.tencent.mm.c.a.aj;
import com.tencent.mm.c.a.ak;
import com.tencent.mm.c.a.am;
import com.tencent.mm.m.c;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import java.util.List;

public final class ExtControlProviderSNS extends ExtContentProviderBase
{
  private static final UriMatcher dfB;
  private static boolean dgb = false;
  private static ay dgc = new ay(new j(), false);
  private static final String[] dgg = { "feedId", "desc", "url", "nickname", "avatar", "timestamp", "mediaCount", "type", "bigImgUrl", "firstImgWidth", "firstImgHeight" };
  private boolean bNa = false;
  private boolean bNb = false;
  private int bNc = 0;
  private String dgh = "";

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    dfB = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.plugin.ext.SNS", "snsInfo", 17);
  }

  private Cursor Mu()
  {
    aa.i("MicroMsg.ExtControlProviderSNS", "getSnsCursor() , needDownload = true");
    e locale = new e(dgg, (byte)0);
    ah localah = new ah();
    localah.bMw.bMy = this.dgh;
    if (!com.tencent.mm.sdk.b.a.ayH().f(localah))
    {
      locale.close();
      return null;
    }
    Cursor localCursor = localah.bMx.cursor;
    if (localCursor != null);
    while (true)
    {
      try
      {
        int i = localCursor.getCount();
        aa.i("MicroMsg.ExtControlProviderSNS", "in getSnsCursor(), snsCount = " + i);
        ak localak;
        if ((i > 0) && (localCursor.moveToFirst()))
        {
          if (localCursor != null)
          {
            localak = new ak();
            localak.bMz.bMB = localCursor;
            if (!com.tencent.mm.sdk.b.a.ayH().f(localak))
              aa.w("MicroMsg.ExtControlProviderSNS", "ExtGetSnsDataEvent publish error");
          }
          else
          {
            if (localCursor.moveToNext())
              continue;
          }
        }
        else
        {
          aa.i("MicroMsg.ExtControlProviderSNS", "in getSnsCursor(), matrixCursor Count = " + locale.getCount());
          localCursor.close();
          break label797;
        }
        i locali = be.uz().su().tM(localak.bMA.bMC);
        if ((locali == null) || (locali.rj() <= 0))
          continue;
        String str1 = "";
        switch (localak.bMA.bMG)
        {
        case 2:
          if ((localak.bMA.bMI == null) || (localak.bMA.bMI.size() <= 0) || (getContext() == null))
            break label790;
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Integer.valueOf(localak.bMA.bMI.size());
          aa.e("MicroMsg.ExtControlProviderSNS", "uris.size() = [%s]", arrayOfObject3);
          if ((j != 2) && (j != 6) && (j != 3) && (j != 4))
            break label790;
          str2 = (String)localak.bMA.bMI.get(0);
          if ((localak.bMA.bMJ != null) && (localak.bMA.bMJ.size() > 0) && (getContext() != null))
          {
            Object[] arrayOfObject2 = new Object[3];
            arrayOfObject2[0] = Integer.valueOf(localak.bMA.bMJ.size());
            arrayOfObject2[1] = Integer.valueOf(localak.bMA.bMK);
            arrayOfObject2[2] = Integer.valueOf(localak.bMA.bML);
            aa.e("MicroMsg.ExtControlProviderSNS", "bigImgUris.size() = [%s], firstImgWidth = [%s], firstImgHeight = [%s]", arrayOfObject2);
            if ((j == 2) || (j == 6) || (j == 3) || (j == 4))
              str1 = (String)localak.bMA.bMJ.get(0);
          }
          String str3 = c.dW(localak.bMA.bMC);
          String str4 = str3;
          try
          {
            Object[] arrayOfObject1 = new Object[11];
            arrayOfObject1[0] = com.tencent.mm.plugin.ext.a.a.V(localak.bMA.bMD);
            arrayOfObject1[1] = localak.bMA.bME;
            arrayOfObject1[2] = str2;
            arrayOfObject1[3] = locali.rr();
            if (str4 == null)
              str4 = "";
            arrayOfObject1[4] = str4;
            arrayOfObject1[5] = Long.valueOf(localak.bMA.bMF);
            arrayOfObject1[6] = Integer.valueOf(localak.bMA.bMH);
            arrayOfObject1[7] = Integer.valueOf(j);
            arrayOfObject1[8] = str1;
            arrayOfObject1[9] = Integer.valueOf(localak.bMA.bMK);
            arrayOfObject1[10] = Integer.valueOf(localak.bMA.bML);
            locale.addRow(arrayOfObject1);
          }
          catch (Exception localException2)
          {
            aa.e("MicroMsg.ExtControlProviderSNS", localException2.getMessage());
          }
          continue;
        case 1:
        case 7:
        case 8:
        case 4:
        case 3:
        case 5:
        case 6:
        }
      }
      catch (Exception localException1)
      {
        aa.e("MicroMsg.ExtControlProviderSNS", localException1.getMessage());
        if (localCursor != null)
          localCursor.close();
        locale.close();
        return null;
      }
      int j = 1;
      continue;
      j = 2;
      continue;
      j = 3;
      continue;
      j = 6;
      continue;
      j = 4;
      continue;
      label790: String str2 = "";
      continue;
      label797: return locale;
      j = 5;
    }
  }

  private Cursor W(long paramLong)
  {
    int i = 1;
    aa.i("MicroMsg.ExtControlProviderSNS", "handleGetSnsInfo() userId = " + paramLong);
    try
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(paramLong);
      aa.d("MicroMsg.ExtControlProviderSNS", "startGetSNSInfo, userId=[%s]", arrayOfObject1);
      i locali;
      if (paramLong == 0L)
      {
        locali = be.uz().su().tM(v.th());
        if ((locali != null) && (locali.rj() > 0))
          break label120;
        aa.e("MicroMsg.ExtControlProviderSNS", "ct == null");
        i = 0;
      }
      while (true)
      {
        if (i != 0)
          break label232;
        aa.w("MicroMsg.ExtControlProviderSNS", "startGetSNSInfo() return false");
        return null;
        locali = be.uz().su().bQ(paramLong);
        break;
        label120: this.bNa = locali.rb();
        this.bNb = v.cm(locali.getUsername());
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = locali.getUsername();
        arrayOfObject2[1] = Boolean.valueOf(this.bNa);
        arrayOfObject2[2] = Boolean.valueOf(this.bNb);
        aa.e("MicroMsg.ExtControlProviderSNS", "ct.getUsername()=[%s], isFriend=[%s], isSelf=[%s]", arrayOfObject2);
        com.tencent.mm.pluginsdk.d.a.a locala = new com.tencent.mm.pluginsdk.d.a.a();
        locala.a(10000L, new k(this, locali, locala));
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ExtControlProviderSNS", localException.getMessage());
    }
    label232: return Mu();
  }

  private static void at(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      dgb = true;
      dgc.bO(15000L);
      return;
    }
    dgc.bO(0L);
  }

  public final int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public final String getType(Uri paramUri)
  {
    return null;
  }

  public final Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public final boolean onCreate()
  {
    return false;
  }

  public final Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    aa.i("MicroMsg.ExtControlProviderSNS", "query() " + paramUri);
    a(paramUri, getContext(), dfB);
    if (paramUri == null)
    {
      fT(3);
      return null;
    }
    if ((cj.hX(Mp())) || (cj.hX(Mq())))
    {
      fT(3);
      return null;
    }
    if (dgb)
    {
      aa.w("MicroMsg.ExtControlProviderSNS", "isBusy, return null");
      fT(5);
      return null;
    }
    at(true);
    if (!ID())
    {
      at(false);
      fT(1);
      return this.dft;
    }
    if (!ao(getContext()))
    {
      aa.w("MicroMsg.ExtControlProviderSNS", "invalid appid ! return null");
      at(false);
      fT(2);
      return null;
    }
    if ((paramArrayOfString2 == null) || (paramArrayOfString2.length == 0))
    {
      aa.e("MicroMsg.ExtControlProviderSNS", "invaild selections");
      at(false);
      fT(3);
      return null;
    }
    String str = paramArrayOfString2[0];
    if (cj.hX(str))
    {
      aa.e("MicroMsg.ExtControlProviderSNS", "userIdStr should not be null or nil");
      at(false);
      fT(3);
      return null;
    }
    while (true)
    {
      long l2;
      try
      {
        boolean bool = "0".equals(str.trim());
        if (bool)
          l2 = 0L;
        switch (dfB.match(paramUri))
        {
        default:
          localCursor = null;
          if (localCursor == null)
            break label333;
          fT(0);
          at(false);
          return localCursor;
          long l1 = Long.valueOf(com.tencent.mm.plugin.ext.a.a.ju(str.trim())).longValue();
          l2 = l1;
          continue;
        case 17:
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ExtControlProviderSNS", localException.getMessage());
        at(false);
        fT(4);
        return null;
      }
      Cursor localCursor = W(l2);
      continue;
      label333: fT(4);
    }
  }

  public final int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.ExtControlProviderSNS
 * JD-Core Version:    0.6.2
 */
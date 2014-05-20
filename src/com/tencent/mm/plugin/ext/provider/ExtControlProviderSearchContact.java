package com.tencent.mm.plugin.ext.provider;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import com.tencent.mm.m.af;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

public class ExtControlProviderSearchContact extends ExtContentProviderBase
{
  private static List cKz;
  private static final String[] dgg;
  private Cursor dgl = null;

  static
  {
    int i = 0;
    dgg = new String[] { "userId", "nickname", "avatar", "content", "msgId", "msgType" };
    cKz = new ArrayList();
    String[] arrayOfString = w.chR;
    int j = arrayOfString.length;
    while (i < j)
    {
      String str = arrayOfString[i];
      cKz.add(str);
      i++;
    }
    cKz.add("officialaccounts");
    cKz.add("helper_entry");
  }

  public static Cursor c(Cursor paramCursor)
  {
    com.tencent.mm.ap.e locale = new com.tencent.mm.ap.e(dgg, (byte)0);
    while (true)
    {
      int j;
      ByteArrayOutputStream localByteArrayOutputStream;
      try
      {
        boolean bool = paramCursor.moveToFirst();
        i = 0;
        i locali;
        if (bool)
        {
          j = i + 1;
          locali = new i();
          locali.convertFrom(paramCursor);
          if (!w.cp(locali.getUsername()))
          {
            Bitmap localBitmap = af.wo().b(locali.getUsername(), true, 0);
            if (localBitmap != null)
            {
              localByteArrayOutputStream = new ByteArrayOutputStream();
              localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
              ak[] arrayOfak = be.uz().sw().am(locali.getUsername(), 1);
              if ((arrayOfak == null) || (arrayOfak.length != 1))
                continue;
              Object[] arrayOfObject2 = new Object[6];
              arrayOfObject2[0] = com.tencent.mm.plugin.ext.a.a.V(locali.rj());
              arrayOfObject2[1] = locali.rr();
              if (localByteArrayOutputStream != null)
                continue;
              arrayOfByte2 = null;
              arrayOfObject2[2] = arrayOfByte2;
              if (arrayOfak[0].getType() != 1)
                break label405;
              str = arrayOfak[0].getContent();
              arrayOfObject2[3] = str;
              arrayOfObject2[4] = com.tencent.mm.plugin.ext.a.a.V(arrayOfak[0].Bo());
              arrayOfObject2[5] = Integer.valueOf(com.tencent.mm.plugin.ext.b.a.o(arrayOfak[0]));
              locale.addRow(arrayOfObject2);
            }
          }
          else
          {
            if ((paramCursor.moveToNext()) && (j < 15))
              break label398;
          }
        }
        else
        {
          paramCursor.close();
          return locale;
        }
        aa.w("MicroMsg.ExtControlProviderSearchContact", "get useravatar is null");
        localByteArrayOutputStream = null;
        continue;
        byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        continue;
        aa.w("MicroMsg.ExtControlProviderSearchContact", "get msginfo failed");
        Object[] arrayOfObject1 = new Object[6];
        arrayOfObject1[0] = com.tencent.mm.plugin.ext.a.a.V(locali.rj());
        arrayOfObject1[1] = locali.rr();
        if (localByteArrayOutputStream == null)
        {
          localObject = null;
          arrayOfObject1[2] = localObject;
          arrayOfObject1[3] = "";
          arrayOfObject1[4] = "0";
          arrayOfObject1[5] = Integer.valueOf(0);
          locale.addRow(arrayOfObject1);
          continue;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ExtControlProviderSearchContact", localException.getMessage());
        if (paramCursor != null)
          paramCursor.close();
        locale.close();
        return null;
      }
      byte[] arrayOfByte1 = localByteArrayOutputStream.toByteArray();
      Object localObject = arrayOfByte1;
      continue;
      label398: int i = j;
      continue;
      label405: String str = "";
    }
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public String getType(Uri paramUri)
  {
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public boolean onCreate()
  {
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    aa.d("MicroMsg.ExtControlProviderSearchContact", "query()");
    a(paramUri, getContext(), 16);
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
    if (!ID())
    {
      fT(1);
      return this.dft;
    }
    if (!ao(getContext()))
    {
      aa.w("MicroMsg.ExtControlProviderSearchContact", "invalid appid ! return null");
      fT(2);
      return null;
    }
    if ((paramArrayOfString2 == null) || (paramArrayOfString2.length == 0))
    {
      aa.e("MicroMsg.ExtControlProviderSearchContact", "invaild selections");
      fT(3);
      return null;
    }
    String str = paramArrayOfString2[0].trim();
    if (cj.hX(str))
    {
      aa.e("MicroMsg.ExtControlProviderSearchContact", "filter should not be null or nil");
      fT(3);
      return null;
    }
    Cursor localCursor = be.uz().su().d(str, "@micromsg.no.verify.biz.qq.com", null, cKz);
    if (localCursor == null)
    {
      aa.e("MicroMsg.ExtControlProviderSearchContact", "cursor is null");
      fT(3);
      return null;
    }
    com.tencent.mm.pluginsdk.d.a.a locala = new com.tencent.mm.pluginsdk.d.a.a();
    locala.a(4000L, new m(this, localCursor, locala));
    if (this.dgl != null)
      fT(0);
    while (true)
    {
      return this.dgl;
      fT(4);
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.ExtControlProviderSearchContact
 * JD-Core Version:    0.6.2
 */
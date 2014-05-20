package com.tencent.mm.plugin.ext.provider;

import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.mm.c.a.az;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public class ExtControlProviderAccountSync extends ExtContentProviderBase
{
  private static final UriMatcher dfB;

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    dfB = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.plugin.ext.AccountSync", "accountSync", 1);
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
    aa.d("MicroMsg.ExtControlAccountSyncProvider", "query()");
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
    if (!ID())
    {
      fT(1);
      return this.dft;
    }
    if (!ao(getContext()))
    {
      aa.w("MicroMsg.ExtControlAccountSyncProvider", "invalid appid ! return null");
      fT(2);
      return null;
    }
    switch (dfB.match(paramUri))
    {
    default:
      fT(3);
      return null;
    case 1:
    }
    aa.i("MicroMsg.ExtControlAccountSyncProvider", "startContactSync()");
    az localaz = new az();
    if (a.ayH().f(localaz))
    {
      fT(0);
      return null;
    }
    aa.e("MicroMsg.ExtControlAccountSyncProvider", "AccountHelper == null");
    fT(4);
    return null;
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.ExtControlProviderAccountSync
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.plugin.ext.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import com.tencent.mm.c.a.an;
import com.tencent.mm.c.a.ap;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public class ExtContentProviderBase extends ContentProvider
{
  protected static boolean cOA = false;
  private static boolean dfy = false;
  protected MatrixCursor dft = new MatrixCursor(new String[0]);
  private long dfu = cj.FE();
  private String dfv = "";
  private String dfw = "";
  private int dfx = 0;

  private int Mo()
  {
    return (int)cj.O(this.dfu);
  }

  private static String ap(Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.ExtContentProviderBase", "in initCallerPkgName(), context == null");
      return "";
    }
    aa.i("MicroMsg.ExtContentProviderBase", "Binder.getCallingUid() = " + Binder.getCallingUid());
    String[] arrayOfString = paramContext.getPackageManager().getPackagesForUid(Binder.getCallingUid());
    if (arrayOfString == null)
    {
      aa.w("MicroMsg.ExtContentProviderBase", "packages == null");
      return "";
    }
    for (int i = 0; i < arrayOfString.length; i++)
      if (arrayOfString[i] != null)
      {
        aa.i("MicroMsg.ExtContentProviderBase", "package == " + arrayOfString[i]);
        return arrayOfString[i];
      }
    return "";
  }

  private static String f(Uri paramUri)
  {
    if (paramUri == null)
      return "";
    return cj.hW(paramUri.getQueryParameter("appid"));
  }

  protected final boolean ID()
  {
    try
    {
      aa.i("MicroMsg.ExtContentProviderBase", "checkIsLogin()");
      if (!cOA)
      {
        com.tencent.mm.pluginsdk.d.a.a locala = new com.tencent.mm.pluginsdk.d.a.a();
        locala.a(4000L, new a(this, locala));
      }
      if ((be.se()) && (be.uD()) && (!be.uG()));
      for (cOA = true; ; cOA = false)
      {
        aa.i("MicroMsg.ExtContentProviderBase", "hasLogin = " + cOA);
        return cOA;
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.ExtContentProviderBase", localException.getMessage());
    }
    return false;
  }

  protected final String Mp()
  {
    return this.dfv;
  }

  protected final String Mq()
  {
    return this.dfw;
  }

  protected final void a(Uri paramUri, Context paramContext, int paramInt)
  {
    this.dfv = f(paramUri);
    this.dfw = ap(paramContext);
    this.dfx = paramInt;
    this.dfu = cj.FE();
  }

  protected final void a(Uri paramUri, Context paramContext, int paramInt, String paramString)
  {
    this.dfv = f(paramUri);
    if ((paramString == null) || (paramString.length() <= 0));
    for (this.dfw = ap(paramContext); ; this.dfw = paramString)
    {
      this.dfx = paramInt;
      this.dfu = cj.FE();
      return;
    }
  }

  protected final void a(Uri paramUri, Context paramContext, UriMatcher paramUriMatcher)
  {
    this.dfv = f(paramUri);
    this.dfw = ap(paramContext);
    if (paramUriMatcher != null)
    {
      this.dfx = paramUriMatcher.match(paramUri);
      if (this.dfx < 0)
        this.dfx = 0;
    }
    this.dfu = cj.FE();
  }

  protected final boolean ao(Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.ExtContentProviderBase", "in checkAppId(), context == null");
      return false;
    }
    if (cj.hX(this.dfv))
    {
      aa.e("MicroMsg.ExtContentProviderBase", "invalid appid, ignore");
      return false;
    }
    if (cj.hX(this.dfw))
    {
      aa.e("MicroMsg.ExtContentProviderBase", "packageName package");
      return false;
    }
    an localan = new an();
    localan.bMM.appId = this.dfv;
    localan.bMM.bMO = this.dfw;
    if (com.tencent.mm.sdk.b.a.ayH().f(localan))
      dfy = localan.bMN.bMh;
    return dfy;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  protected final void fT(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[5];
    arrayOfObject1[0] = this.dfw;
    arrayOfObject1[1] = this.dfv;
    arrayOfObject1[2] = Integer.valueOf(this.dfx);
    arrayOfObject1[3] = Integer.valueOf(paramInt);
    arrayOfObject1[4] = Integer.valueOf(Mo());
    aa.d("MicroMsg.ExtContentProviderBase", "callingPkg = %s, appID = %s, apiID = %s, result = %s, timeCost = %s", arrayOfObject1);
    m localm = m.dZN;
    Object[] arrayOfObject2 = new Object[5];
    arrayOfObject2[0] = this.dfw;
    arrayOfObject2[1] = this.dfv;
    arrayOfObject2[2] = Integer.valueOf(this.dfx);
    arrayOfObject2[3] = Integer.valueOf(paramInt);
    arrayOfObject2[4] = Integer.valueOf(Mo());
    localm.d(10505, arrayOfObject2);
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
    return null;
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.ExtContentProviderBase
 * JD-Core Version:    0.6.2
 */
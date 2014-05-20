package com.tencent.mm.plugin.base.stub;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.UriMatcher;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import com.tencent.mm.c.a.ae;
import com.tencent.mm.c.a.ag;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

public class WXCommProvider extends ContentProvider
{
  protected static boolean cOA = false;
  public static final String cOx = al.getPackageName() + "_comm_preferences";
  private static final String[] cOy = { "packageName", "data" };
  private static final UriMatcher cOz;
  private SharedPreferences chz;
  private Handler handler;

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    cOz = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.sdk.comm.provider", "pref", 1);
    cOz.addURI("com.tencent.mm.sdk.comm.provider", "openQRCodeScan", 18);
    cOz.addURI("com.tencent.mm.sdk.comm.provider", "batchAddShortcut", 19);
    cOz.addURI("com.tencent.mm.sdk.comm.provider", "getUnreadCount", 20);
  }

  private String[] IC()
  {
    String[] arrayOfString;
    try
    {
      int i = Binder.getCallingUid();
      arrayOfString = getContext().getPackageManager().getPackagesForUid(Binder.getCallingUid());
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      if (arrayOfString == null);
      for (int j = 0; ; j = arrayOfString.length)
      {
        arrayOfObject2[1] = Integer.valueOf(j);
        aa.e("MicroMsg.WXCommProvider", "getCallingPackages, callingUid = %d, packages size = %d", arrayOfObject2);
        if (arrayOfString != null)
          break;
        aa.w("MicroMsg.WXCommProvider", "getCallingPackages fail, packages is null");
        return new String[0];
      }
      int k = arrayOfString.length;
      for (int m = 0; m < k; m++)
        aa.f("MicroMsg.WXCommProvider", "getCallingPackages = %s", new Object[] { arrayOfString[m] });
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.getMessage();
      aa.b("MicroMsg.WXCommProvider", "getCallingPackages, ex = %s", arrayOfObject1);
      arrayOfString = new String[0];
    }
    return arrayOfString;
  }

  private boolean ID()
  {
    try
    {
      aa.i("MicroMsg.WXCommProvider", "checkIsLogin()");
      if (!cOA)
      {
        com.tencent.mm.pluginsdk.d.a.a locala = new com.tencent.mm.pluginsdk.d.a.a();
        locala.a(4000L, new w(this, locala));
      }
      if ((be.se()) && (be.uD()) && (!be.uG()));
      for (cOA = true; ; cOA = false)
      {
        aa.i("MicroMsg.WXCommProvider", "hasLogin = " + cOA);
        return cOA;
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.WXCommProvider", localException.getMessage());
    }
    return false;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    if (paramUri == null)
    {
      aa.e("MicroMsg.WXCommProvider", "delete fail, uri is null");
      return 0;
    }
    int i = cOz.match(paramUri);
    String[] arrayOfString = IC();
    return ((Integer)new v(this, Integer.valueOf(0), paramUri, i, arrayOfString).b(this.handler)).intValue();
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
    aa.d("MicroMsg.WXCommProvider", "onCreate");
    this.handler = new Handler();
    this.chz = getContext().getSharedPreferences(cOx, 0);
    SharedPreferences localSharedPreferences = this.chz;
    boolean bool = false;
    if (localSharedPreferences != null)
      bool = true;
    return bool;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (paramUri == null)
    {
      aa.e("MicroMsg.WXCommProvider", "query fail, uri is null");
      return null;
    }
    String[] arrayOfString = IC();
    if ((arrayOfString == null) || (arrayOfString.length <= 0))
    {
      aa.e("MicroMsg.WXCommProvider", "CallingPackages is null");
      return null;
    }
    int i = cOz.match(paramUri);
    switch (i)
    {
    default:
      return (Cursor)new u(this, paramUri, i, arrayOfString).b(this.handler);
    case 18:
    case 19:
    case 20:
    }
    if (!ID())
      return null;
    ae localae = new ae();
    localae.bMs.bMu = i;
    localae.bMs.uri = paramUri;
    localae.bMs.selectionArgs = paramArrayOfString2;
    localae.bMs.context = getContext();
    for (int j = 0; ; j++)
      if (j < arrayOfString.length)
      {
        if (arrayOfString[j] != null)
          localae.bMs.bMv = arrayOfString[j];
      }
      else
      {
        if (com.tencent.mm.sdk.b.a.ayH().f(localae))
          break;
        aa.e("MicroMsg.WXCommProvider", "ExtCallEvent fail");
        return null;
      }
    return localae.bMt.cursor;
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.WXCommProvider
 * JD-Core Version:    0.6.2
 */
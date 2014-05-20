package com.tencent.mm.pluginsdk.model.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.a.f;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.ah;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class u
{
  public static String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "buildRedirectUrl fail, invalid arguments");
      return null;
    }
    int i;
    String str1;
    LinkedHashMap localLinkedHashMap;
    int n;
    label164: String str6;
    String str8;
    String str7;
    if (paramBoolean)
    {
      i = 1;
      int j = paramString1.indexOf("#");
      str1 = "";
      if (j >= 0)
      {
        str1 = paramString1.substring(j);
        paramString1 = paramString1.substring(0, j);
      }
      int k = paramString1.indexOf("?");
      String str2 = "";
      if (k >= 0)
      {
        str2 = paramString1.substring(k + 1);
        paramString1 = paramString1.substring(0, k);
      }
      aa.f("MicroMsg.AppUtil", "buildRedirectUrl, sharpStr = %s, paramStr = %s, srcUrl = %s", new Object[] { str1, str2, paramString1 });
      localLinkedHashMap = new LinkedHashMap();
      if (cj.hX(str2))
        break label281;
      String[] arrayOfString = str2.split("&");
      if ((arrayOfString == null) || (arrayOfString.length <= 0))
        break label281;
      int m = arrayOfString.length;
      n = 0;
      if (n >= m)
        break label281;
      str6 = arrayOfString[n];
      if (!cj.hX(str6))
      {
        int i1 = str6.indexOf("=");
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(i1);
        aa.f("MicroMsg.AppUtil", "buildRedirectUrl, equalIdx = %d", arrayOfObject2);
        if (i1 < 0)
          break label270;
        str8 = str6.substring(0, i1 + 1);
        str7 = str6.substring(i1 + 1);
      }
    }
    while (true)
    {
      localLinkedHashMap.put(str8, str7);
      n++;
      break label164;
      i = 0;
      break;
      label270: str7 = "";
      str8 = str6;
    }
    label281: if (paramString2 == null)
      paramString2 = "";
    localLinkedHashMap.put("from=", paramString2);
    localLinkedHashMap.put("isappinstalled=", String.valueOf(i));
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(localLinkedHashMap.size());
    aa.f("MicroMsg.AppUtil", "buildRedirectUrl, pMap size = %d", arrayOfObject1);
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = localLinkedHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str5 = (String)localIterator.next();
      if (localStringBuilder.length() > 0)
        localStringBuilder.append("&");
      localStringBuilder.append(str5);
      localStringBuilder.append((String)localLinkedHashMap.get(str5));
    }
    String str3 = localStringBuilder.toString();
    String str4 = paramString1 + "?" + str3;
    if (!cj.hX(str1))
      str4 = str4 + str1;
    aa.f("MicroMsg.AppUtil", "buildRedirectUrl, ret url = %s", new Object[] { str4 });
    return str4;
  }

  public static PackageInfo ad(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "getPackageInfo, packageName is null");
      return null;
    }
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      aa.w("MicroMsg.AppUtil", "app not installed, packageName = " + paramString);
    }
    return null;
  }

  public static String ae(Context paramContext, String paramString)
  {
    Signature[] arrayOfSignature = af(paramContext, paramString);
    if ((arrayOfSignature == null) || (arrayOfSignature.length == 0))
    {
      aa.e("MicroMsg.AppUtil", "signs is null");
      return null;
    }
    return qu(f.h(arrayOfSignature[0].toByteArray()));
  }

  public static Signature[] af(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "getSignature, packageName is null");
      return null;
    }
    PackageManager localPackageManager = paramContext.getPackageManager();
    PackageInfo localPackageInfo;
    try
    {
      localPackageInfo = localPackageManager.getPackageInfo(paramString, 64);
      if (localPackageInfo == null)
      {
        aa.e("MicroMsg.AppUtil", "info is null, packageName = " + paramString);
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      aa.e("MicroMsg.AppUtil", "NameNotFoundException");
      return null;
    }
    return localPackageInfo.signatures;
  }

  public static boolean ag(Context paramContext, String paramString)
  {
    Uri localUri = Uri.parse(paramString);
    Intent localIntent1 = new Intent("android.intent.action.VIEW", localUri);
    localIntent1.addFlags(268435456);
    if (ad(paramContext, "com.android.vending") != null)
    {
      aa.f("MicroMsg.AppUtil", "installAppWithGP, gp is installed, url = %s", new Object[] { paramString });
      localIntent1.setPackage("com.android.vending");
    }
    try
    {
      while (true)
      {
        paramContext.startActivity(localIntent1);
        return true;
        aa.f("MicroMsg.AppUtil", "installAppWithGP, gp is not installed, url = %s", new Object[] { paramString });
      }
    }
    catch (Exception localException1)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException1.getMessage();
      aa.b("MicroMsg.AppUtil", "installAppWithGP first, ex = %s", arrayOfObject1);
      try
      {
        Intent localIntent2 = new Intent("android.intent.action.VIEW", localUri);
        localIntent2.addFlags(268435456);
        paramContext.startActivity(localIntent2);
        return true;
      }
      catch (Exception localException2)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localException2.getMessage();
        aa.b("MicroMsg.AppUtil", "installAppWithGP second, ex = %s", arrayOfObject2);
      }
    }
    return false;
  }

  public static String b(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString2 == null) || (paramString2.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "buildSourceUrl fail, invalid arguments");
      return null;
    }
    String str = z.a(paramContext.getSharedPreferences(al.azs(), 0));
    if ((str == null) || (str.length() == 0))
      str = "zh_CN";
    while (true)
    {
      int i = n.bsq;
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = paramString1;
      arrayOfObject[1] = Integer.valueOf(a.fxr);
      arrayOfObject[2] = str;
      arrayOfObject[3] = a.fxk;
      arrayOfObject[4] = paramString2;
      return paramContext.getString(i, arrayOfObject);
      if (str.equals("en"))
        str = "en_US";
    }
  }

  public static boolean b(Context paramContext, Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(paramUri, "application/vnd.android.package-archive");
    localIntent.addFlags(268435456);
    try
    {
      paramContext.startActivity(localIntent);
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.AppUtil", "install app failed: " + paramUri.toString() + ", ex = " + localException.getMessage());
    }
    return false;
  }

  public static boolean b(Context paramContext, k paramk, String paramString)
  {
    ah localah = h.app();
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "isAppValid, packageName is null");
      localah.g(paramk);
      return false;
    }
    if (paramk == null)
    {
      aa.i("MicroMsg.AppUtil", "app does not exist");
      return true;
    }
    if ((paramk.field_packageName == null) || (paramk.field_packageName.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "isAppValid fail, local packageName is null");
      localah.g(paramk);
      return false;
    }
    if ((paramk.field_signature == null) || (paramk.field_signature.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "isAppValid fail, local signature is null");
      localah.g(paramk);
      return false;
    }
    Signature[] arrayOfSignature = af(paramContext, paramString);
    if ((arrayOfSignature == null) || (arrayOfSignature.length == 0))
    {
      aa.e("MicroMsg.AppUtil", "isAppValid, apk signatures is null");
      localah.g(paramk);
      return false;
    }
    if (!paramk.field_packageName.equals(paramString))
    {
      aa.e("MicroMsg.AppUtil", "isAppValid, packageName is diff, src=" + paramk.field_packageName);
      localah.g(paramk);
      return false;
    }
    int i = arrayOfSignature.length;
    for (int j = 0; j < i; j++)
    {
      String str = qu(f.h(arrayOfSignature[j].toByteArray()));
      if ((paramk.field_signature != null) && (paramk.field_signature.equals(str)))
      {
        localah.h(paramk);
        return true;
      }
    }
    aa.w("MicroMsg.AppUtil", "isAppValid, signature is diff");
    localah.g(paramk);
    return false;
  }

  public static boolean e(Context paramContext, k paramk)
  {
    aa.i("MicroMsg.AppUtil", "check the signature of the Application.");
    if (paramContext == null)
    {
      aa.e("MicroMsg.AppUtil", "context is null.");
      return true;
    }
    if (paramk == null)
    {
      aa.e("MicroMsg.AppUtil", "appInfo is null.");
      return true;
    }
    if (cj.hX(paramk.field_packageName))
    {
      aa.e("MicroMsg.AppUtil", "packageName is null.");
      return true;
    }
    if (cj.hX(paramk.field_signature))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = paramk.field_packageName;
      aa.b("MicroMsg.AppUtil", "app.field_signature is null. app.field_packageName is %s", arrayOfObject3);
      return true;
    }
    Signature[] arrayOfSignature = af(paramContext, paramk.field_packageName);
    if ((arrayOfSignature == null) || (arrayOfSignature.length == 0))
    {
      aa.e("MicroMsg.AppUtil", "apk signatures is null");
      return false;
    }
    int i = arrayOfSignature.length;
    for (int j = 0; j < i; j++)
    {
      String str = qu(f.h(arrayOfSignature[j].toByteArray()));
      if (paramk.field_signature.equals(str))
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = paramk.field_appName;
        arrayOfObject2[1] = paramk.field_signature;
        aa.d("MicroMsg.AppUtil", "app_name : %s ,signature : %s", arrayOfObject2);
        return true;
      }
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = paramk.field_appName;
    aa.c("MicroMsg.AppUtil", "signature is diff.(app_name:%s)", arrayOfObject1);
    return false;
  }

  public static boolean g(Context paramContext, String paramString)
  {
    return ad(paramContext, paramString) != null;
  }

  public static String qt(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppUtil", "getDbSignature, svrSign is null");
      return null;
    }
    return qu(paramString);
  }

  private static String qu(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString.toLowerCase());
    localStringBuffer.append("mMHc ItnStR");
    return f.h(localStringBuffer.toString().getBytes());
  }

  public static void s(Bundle paramBundle)
  {
    if (paramBundle != null)
      paramBundle.putString("wx_token_key", "com.tencent.mm.openapi.token");
  }

  public static void t(Bundle paramBundle)
  {
    if (paramBundle != null)
      paramBundle.putString("platformId", "wechat");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.u
 * JD-Core Version:    0.6.2
 */
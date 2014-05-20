package com.a.a;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

public final class a
{
  public static boolean R(String paramString)
  {
    return ("com.tencent.mtt".equals(paramString)) || ("com.tencent.qbx".equals(paramString)) || ("com.tencent.mtt.x86".equals(paramString)) || ("com.tencent.qbx5".equals(paramString));
  }

  private static c a(Context paramContext, Uri paramUri)
  {
    Intent localIntent = new Intent("com.tencent.QQBrowser.action.VIEW");
    localIntent.setData(paramUri);
    List localList = paramContext.getPackageManager().queryIntentActivities(localIntent, 0);
    if (localList.size() <= 0)
      return null;
    c localc = new c((byte)0);
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      String str = localResolveInfo.activityInfo.packageName;
      if (str.contains("com.tencent.mtt"))
      {
        localc.classname = localResolveInfo.activityInfo.name;
        localc.JS = localResolveInfo.activityInfo.packageName;
        return localc;
      }
      if (str.contains("com.tencent.qbx"))
      {
        localc.classname = localResolveInfo.activityInfo.name;
        localc.JS = localResolveInfo.activityInfo.packageName;
      }
    }
    return localc;
  }

  public static int c(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return 3;
    boolean bool;
    if ((paramString == null) || (paramString.length() == 0))
      bool = false;
    Object localObject;
    b localb1;
    while (true)
    {
      if (!bool)
        paramString = "http://" + paramString;
      try
      {
        Uri localUri1 = Uri.parse(paramString);
        localObject = localUri1;
        if (localObject == null)
        {
          return 2;
          String str = paramString.trim();
          int k = str.toLowerCase().indexOf("://");
          int m = str.toLowerCase().indexOf('.');
          if ((k > 0) && (m > 0) && (k > m))
            bool = false;
          else
            bool = str.toLowerCase().contains("://");
        }
        else
        {
          b localb2;
          int i;
          if (((Uri)localObject).getScheme().toLowerCase().equals("qb"))
          {
            localb2 = h(paramContext);
            if (localb2.JP != -1)
              break label209;
            i = 0;
          }
          while (true)
          {
            if (i == 0)
            {
              Uri localUri2 = Uri.parse("http://mdc.html5.qq.com/d/directdown.jsp?channel_id=10318" + URLEncoder.encode(paramString, "UTF-8"));
              localObject = localUri2;
            }
            localb1 = h(paramContext);
            if (localb1.JP != -1)
              break;
            return 4;
            label209: if (localb2.JP == 2)
            {
              int j = localb2.JQ;
              if (j < 42)
                i = 0;
            }
            else
            {
              i = 1;
            }
          }
        }
      }
      catch (Exception localException)
      {
        return 2;
      }
    }
    if ((localb1.JP == 2) && (localb1.JQ < 33))
      return 5;
    Intent localIntent = new Intent("android.intent.action.VIEW");
    if (localb1.JP == 2)
      if ((localb1.JQ >= 33) && (localb1.JQ <= 39))
        localIntent.setClassName("com.tencent.mtt", "com.tencent.mtt.MainActivity");
    while (true)
    {
      localIntent.setData((Uri)localObject);
      try
      {
        localIntent.putExtra("loginType", 24);
        paramContext.startActivity(localIntent);
        return 0;
        if ((localb1.JQ >= 40) && (localb1.JQ <= 45))
        {
          localIntent.setClassName("com.tencent.mtt", "com.tencent.mtt.SplashActivity");
        }
        else if (localb1.JQ >= 46)
        {
          localIntent = new Intent("com.tencent.QQBrowser.action.VIEW");
          c localc3 = a(paramContext, (Uri)localObject);
          if ((localc3 != null) && (!TextUtils.isEmpty(localc3.classname)))
          {
            localIntent.setClassName(localc3.JS, localc3.classname);
            continue;
            if (localb1.JP == 1)
            {
              if (localb1.JQ == 1)
                localIntent.setClassName("com.tencent.qbx5", "com.tencent.qbx5.MainActivity");
              else if (localb1.JQ == 2)
                localIntent.setClassName("com.tencent.qbx5", "com.tencent.qbx5.SplashActivity");
            }
            else if (localb1.JP == 0)
            {
              if ((localb1.JQ >= 4) && (localb1.JQ <= 6))
              {
                localIntent.setClassName("com.tencent.qbx", "com.tencent.qbx.SplashActivity");
              }
              else if (localb1.JQ > 6)
              {
                localIntent = new Intent("com.tencent.QQBrowser.action.VIEW");
                c localc2 = a(paramContext, (Uri)localObject);
                if ((localc2 != null) && (!TextUtils.isEmpty(localc2.classname)))
                  localIntent.setClassName(localc2.JS, localc2.classname);
              }
            }
            else
            {
              localIntent = new Intent("com.tencent.QQBrowser.action.VIEW");
              c localc1 = a(paramContext, (Uri)localObject);
              if ((localc1 != null) && (!TextUtils.isEmpty(localc1.classname)))
                localIntent.setClassName(localc1.JS, localc1.classname);
            }
          }
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
      }
    }
    return 4;
  }

  public static boolean g(Context paramContext)
  {
    b localb = h(paramContext);
    if (localb.JP == -1);
    while ((localb.JP == 2) && (localb.JQ < 33))
      return false;
    return true;
  }

  private static b h(Context paramContext)
  {
    b localb = new b();
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      PackageInfo localPackageInfo = null;
      try
      {
        localPackageInfo = localPackageManager.getPackageInfo("com.tencent.mtt", 0);
        localb.JP = 2;
        localb.JR = "ADRQB_";
        if ((localPackageInfo != null) && (localPackageInfo.versionCode > 420000))
        {
          localb.JQ = localPackageInfo.versionCode;
          localb.JR += localPackageInfo.versionName.replaceAll("\\.", "");
          return localb;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1)
      {
      }
      try
      {
        localPackageInfo = localPackageManager.getPackageInfo("com.tencent.qbx", 0);
        localb.JP = 0;
        localb.JR = "ADRQBX_";
        if (localPackageInfo != null)
        {
          localb.JQ = localPackageInfo.versionCode;
          localb.JR += localPackageInfo.versionName.replaceAll("\\.", "");
        }
        label170: return localb;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        while (true)
          try
          {
            localPackageInfo = localPackageManager.getPackageInfo("com.tencent.qbx5", 0);
            localb.JP = 1;
            localb.JR = "ADRQBX5_";
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException3)
          {
            try
            {
              localPackageInfo = localPackageManager.getPackageInfo("com.tencent.mtt", 0);
              localb.JP = 2;
              localb.JR = "ADRQB_";
            }
            catch (PackageManager.NameNotFoundException localNameNotFoundException4)
            {
              try
              {
                localPackageInfo = localPackageManager.getPackageInfo("com.tencent.mtt.x86", 0);
                localb.JP = 2;
                localb.JR = "ADRQB_";
              }
              catch (Exception localException2)
              {
                try
                {
                  c localc = a(paramContext, Uri.parse("http://mdc.html5.qq.com/d/directdown.jsp?channel_id=10318"));
                  if ((localc != null) && (!TextUtils.isEmpty(localc.JS)))
                  {
                    localPackageInfo = localPackageManager.getPackageInfo(localc.JS, 0);
                    localb.JP = 2;
                    localb.JR = "ADRQB_";
                  }
                }
                catch (Exception localException3)
                {
                }
              }
            }
          }
      }
    }
    catch (Exception localException1)
    {
      break label170;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.a.a.a
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.e.c;
import com.tencent.mm.e.d;
import com.tencent.mm.h;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ah;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BrowserChooseActivity extends MMActivity
{
  private DialogInterface.OnDismissListener gya = new p(this);
  private r hgR;
  private String hgS;
  private Intent hgT;
  private t hgU = null;
  private t hgV = new t(this);
  private List hgW;
  private v hgX;
  private boolean hgY;
  private String hgZ;
  private int hha;
  private int hhb = 5;
  private boolean hhc = false;
  private boolean hhd;
  private long hhe;
  private boolean hhf = false;
  private AdapterView.OnItemClickListener hhg = new l(this);
  private View.OnClickListener hhh = new m(this);
  private View.OnClickListener hhi = new n(this);
  private View.OnClickListener hhj = new o(this);
  private com.tencent.mm.pluginsdk.model.downloader.n hhk = new q(this);
  private ActivityManager mActivityManager;
  private PackageManager mPackageManager;

  private static Drawable a(Resources paramResources, int paramInt)
  {
    try
    {
      Drawable localDrawable = paramResources.getDrawable(paramInt);
      return localDrawable;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
    }
    return null;
  }

  private List a(Intent paramIntent, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    List localList = this.mPackageManager.queryIntentActivities(paramIntent, 65536);
    this.hgV.hht = getResources().getDrawable(h.afg);
    this.hgV.hhs = getResources().getString(com.tencent.mm.n.btm);
    this.hgV.hhu = true;
    this.hgV.hhv = this.hhc;
    if (this.hhc)
      this.hgV.doL = true;
    if ((localList != null) && (localList.size() > 0))
    {
      int i = localList.size();
      int j = 0;
      while (j < i)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = ((ResolveInfo)localList.get(j)).activityInfo.name;
        aa.e("MicroMsg.BrowserChooseActivity", "cpan name:%s", arrayOfObject);
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(j);
        if (localResolveInfo != null)
        {
          if (com.a.a.a.R(localResolveInfo.activityInfo.packageName))
          {
            this.hgV.hhr = localResolveInfo;
            this.hgV.doL = true;
          }
        }
        else
        {
          j++;
          continue;
        }
        Activity localActivity = aal();
        Object localObject;
        if ((localActivity == null) || (localResolveInfo == null) || (localResolveInfo.activityInfo == null) || (localResolveInfo.activityInfo.packageName == null))
          localObject = null;
        while (true)
        {
          localArrayList.add(new t(this, localResolveInfo, (CharSequence)localObject));
          break;
          String str1 = localResolveInfo.activityInfo.packageName;
          if ("com.qihoo.browser".equals(str1))
          {
            localObject = "360浏览器";
          }
          else if ("com.mx.browser".equals(str1))
          {
            localObject = "遨游云浏览器";
          }
          else if ("com.dolphin.browser.xf".equals(str1))
          {
            localObject = "海豚浏览器";
          }
          else if ("com.UCMobile".equals(str1))
          {
            localObject = "UC浏览器";
          }
          else if ("com.baidu.browser.apps".equals(str1))
          {
            localObject = "百度浏览器";
          }
          else if ("sogou.mobile.explorer".equals(str1))
          {
            localObject = "搜狗浏览器";
          }
          else if ("com.ijinshan.browser".equals(str1))
          {
            localObject = "猎豹浏览器";
          }
          else if ("com.mediawoz.xbrowser".equals(str1))
          {
            localObject = "GO浏览器";
          }
          else if ("com.oupeng.browser".equals(str1))
          {
            localObject = "欧鹏浏览器";
          }
          else if ("com.tiantianmini.android.browser".equals(str1))
          {
            localObject = "天天浏览器";
          }
          else
          {
            CharSequence localCharSequence = localResolveInfo.activityInfo.loadLabel(localActivity.getPackageManager());
            if (localCharSequence != null)
            {
              String str2 = localCharSequence.toString();
              Matcher localMatcher = Pattern.compile("\\(.*推荐.*\\)", 2).matcher(str2);
              if (localMatcher.find())
                localObject = localMatcher.replaceAll("");
            }
            else
            {
              localObject = localResolveInfo.activityInfo.loadLabel(localActivity.getPackageManager()).toString();
            }
          }
        }
      }
    }
    if (paramBoolean)
      localArrayList.add(0, this.hgV);
    if (((!paramBoolean) && (this.hhc)) || ((!paramBoolean) && (this.hgV.doL)))
      localArrayList.add(0, this.hgV);
    return localArrayList;
  }

  private void a(t paramt, Intent paramIntent, String paramString)
  {
    Intent localIntent;
    if ((paramt != null) && (paramIntent != null))
    {
      localIntent = new Intent(paramIntent);
      if (!paramt.hhu)
        break label126;
      if (!paramt.hhv)
        break label75;
      com.a.a.a.c(aal(), paramString);
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(4);
      localm2.d(10998, arrayOfObject2);
    }
    while (true)
    {
      finish();
      return;
      label75: localIntent.setComponent(new ComponentName(paramt.hhr.activityInfo.packageName, paramt.hhr.activityInfo.name));
      localIntent.addFlags(524288);
      startActivity(localIntent);
      break;
      label126: localIntent.setComponent(new ComponentName(paramt.hhr.activityInfo.packageName, paramt.hhr.activityInfo.name));
      localIntent.addFlags(524288);
      startActivity(localIntent);
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(5);
      localm1.d(10998, arrayOfObject1);
    }
  }

  private Drawable b(ResolveInfo paramResolveInfo)
  {
    Drawable localDrawable1;
    try
    {
      if ((paramResolveInfo.resolvePackageName != null) && (paramResolveInfo.icon != 0))
      {
        Drawable localDrawable2 = a(this.mPackageManager.getResourcesForApplication(paramResolveInfo.resolvePackageName), paramResolveInfo.icon);
        if (localDrawable2 != null)
          return localDrawable2;
      }
      int i = paramResolveInfo.getIconResource();
      if (i != 0)
      {
        localDrawable1 = a(this.mPackageManager.getResourcesForApplication(paramResolveInfo.activityInfo.packageName), i);
        if (localDrawable1 != null);
      }
      else
      {
        return paramResolveInfo.loadIcon(this.mPackageManager);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        aa.b("MicroMsg.BrowserChooseActivity", "Couldn't find resources for package", new Object[] { localNameNotFoundException });
    }
    return localDrawable1;
  }

  public final void cj(long paramLong)
  {
    if (FileDownloadManger.bw(paramLong))
    {
      String str = FileDownloadManger.by(paramLong).field_filePath;
      aa.e("MicroMsg.BrowserChooseActivity", "filepath:%s", new Object[] { str });
      if (!TextUtils.isEmpty(str))
      {
        File localFile = new File(str);
        u.b(aal(), Uri.fromFile(localFile));
        if (this.hgR != null)
        {
          this.hgR.a(w.hhC);
          this.hgR.notifyDataSetChanged();
        }
      }
    }
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent1 = getIntent();
    Parcelable localParcelable = localIntent1.getParcelableExtra("com.tencent.mm.extra.INTENT");
    this.hgS = localIntent1.getStringExtra("com.tencent.mm.extra.URL");
    if (!(localParcelable instanceof Intent))
    {
      aa.w("ChooseActivity", "Target is not an intent: " + localParcelable);
      finish();
      return;
    }
    this.hgT = ((Intent)localParcelable);
    try
    {
      String str = d.qA().getValue("ShowSecurityEntry");
      aa.e("MicroMsg.BrowserChooseActivity", "mSuggestQQBrowserShow %s, return", new Object[] { str });
      if ((cj.hX(str)) || (Integer.valueOf(str).intValue() == 1))
        this.hhf = true;
      if (!this.hhf)
      {
        startActivity(this.hgT);
        finish();
        return;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.getMessage();
      aa.b("MicroMsg.BrowserChooseActivity", "exception in mSuggestQQBrowserShow, %s", arrayOfObject1);
      return;
    }
    com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(0);
    localm1.d(10998, arrayOfObject2);
    this.mPackageManager = getPackageManager();
    this.mActivityManager = ((ActivityManager)getSystemService("activity"));
    this.hgR = new r(this);
    this.hgZ = ((String)be.uz().sr().get(274528, ""));
    this.hha = ((Integer)be.uz().sr().get(274496, Integer.valueOf(0))).intValue();
    this.hhb = d.qB().qq();
    if ((!TextUtils.isEmpty(this.hgZ)) && (u.g(aal(), this.hgZ)))
    {
      this.hgY = true;
      this.hhc = com.a.a.a.g(aal());
      if (!this.hgY)
        break label505;
      if (!com.a.a.a.R(this.hgZ))
        break label444;
      if (!this.hhc)
        break label412;
      com.a.a.a.c(aal(), this.hgS);
      label370: com.tencent.mm.plugin.d.c.m localm7 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject8 = new Object[1];
      arrayOfObject8[0] = Integer.valueOf(4);
      localm7.d(10998, arrayOfObject8);
    }
    while (true)
    {
      finish();
      return;
      this.hgY = false;
      break;
      label412: Intent localIntent4 = new Intent(this.hgT);
      localIntent4.setPackage(this.hgZ);
      startActivity(localIntent4);
      break label370;
      label444: Intent localIntent3 = new Intent(this.hgT);
      localIntent3.setPackage(this.hgZ);
      startActivity(localIntent3);
      com.tencent.mm.plugin.d.c.m localm6 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject7 = new Object[1];
      arrayOfObject7[0] = Integer.valueOf(5);
      localm6.d(10998, arrayOfObject7);
    }
    label505: boolean bool1;
    label519: boolean bool2;
    if (this.hha >= this.hhb)
    {
      bool1 = true;
      this.hhd = bool1;
      Intent localIntent2 = this.hgT;
      if (!this.hhd)
        break label863;
      bool2 = false;
      label541: this.hgW = a(localIntent2, bool2);
      if (this.hhd)
        break label901;
      if (!this.hhc)
        break label869;
      com.tencent.mm.plugin.d.c.m localm5 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = Integer.valueOf(3);
      localm5.d(10998, arrayOfObject6);
    }
    while (true)
    {
      if ((this.hhd) && (this.hgW != null) && (this.hgW.size() == 1))
      {
        t localt = (t)this.hgW.get(0);
        if (localt != null)
        {
          a(localt, this.hgT, this.hgS);
          com.tencent.mm.plugin.d.c.m localm3 = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = Integer.valueOf(5);
          localm3.d(10998, arrayOfObject4);
        }
      }
      mB(8);
      this.hgR.M(this.hgW);
      this.hgX = new v(this, aal());
      this.hgX.setTitle(com.tencent.mm.n.bhh);
      this.hgX.setOnItemClickListener(this.hhg);
      this.hgX.q(this.hhi);
      this.hgX.p(this.hhh);
      this.hgX.a(this.hgR);
      this.hgX.setOnDismissListener(this.gya);
      this.hgX.show();
      if ((this.hhc) && (!this.hhd))
      {
        this.hgU = this.hgV;
        this.hgX.en(true);
      }
      FileDownloadManger.a(this.hhk);
      if (this.hhc)
        break;
      be.uz().sr().set(274496, Integer.valueOf(1 + this.hha));
      return;
      bool1 = false;
      break label519;
      label863: bool2 = true;
      break label541;
      label869: com.tencent.mm.plugin.d.c.m localm4 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Integer.valueOf(1);
      localm4.d(10998, arrayOfObject5);
      continue;
      label901: if (this.hhc)
      {
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(3);
        localm2.d(10998, arrayOfObject3);
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    FileDownloadManger.b(this.hhk);
  }

  protected void onResume()
  {
    super.onResume();
    boolean bool1;
    Intent localIntent;
    boolean bool3;
    if (this.hha >= this.hhb)
    {
      bool1 = true;
      this.hhd = bool1;
      this.hhc = com.a.a.a.g(aal());
      localIntent = this.hgT;
      boolean bool2 = this.hhd;
      bool3 = false;
      if (!bool2)
        break label122;
    }
    while (true)
    {
      this.hgW = a(localIntent, bool3);
      if ((this.hhc) && (this.hgU == null))
      {
        this.hgU = this.hgV;
        this.hgX.en(true);
      }
      if (this.hgR != null)
      {
        this.hgR.M(this.hgW);
        this.hgR.notifyDataSetChanged();
      }
      return;
      bool1 = false;
      break;
      label122: bool3 = true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.BrowserChooseActivity
 * JD-Core Version:    0.6.2
 */
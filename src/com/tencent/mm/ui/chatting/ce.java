package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.j.b;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.ui.chat.bb;
import com.tencent.mm.pluginsdk.ui.chat.bc;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.y;
import com.tencent.mm.ui.tools.WebViewUI;

public abstract class ce
{
  protected final int dws;
  public boolean gJU;

  public ce(int paramInt)
  {
    this.dws = paramInt;
  }

  protected static String a(ChattingUI paramChattingUI, ak paramak)
  {
    String str = paramChattingUI.aJe();
    if (w.cp(str))
      str = bv.dy(paramak.getContent());
    return str;
  }

  protected static void a(int paramInt, cf paramcf, ak paramak, String paramString, boolean paramBoolean, ez paramez)
  {
    int i;
    if (paramak.rO() == 1)
    {
      paramcf.gKj.setTag(new kk(paramak, paramBoolean, paramInt, paramString, 5, '\000'));
      paramcf.gKj.setOnClickListener(paramez);
      switch (paramak.getStatus())
      {
      default:
        aa.e("MicroMsg.ChattingItem", "getMsgStateResId: not found this state");
        i = -1;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
    }
    while (i != -1)
    {
      paramcf.gKj.setImageResource(2130838896);
      paramcf.gKj.setVisibility(0);
      return;
      i = -1;
      continue;
      i = 2130838896;
    }
    paramcf.gKj.setVisibility(8);
  }

  public static void a(ak paramak, y paramy, ChattingUI paramChattingUI)
  {
    if (paramy.bM(paramChattingUI) == null)
      h.apj().g(paramak.aCl(), com.tencent.mm.storage.u.uk(paramak.getContent()).aAU(), paramak.AH());
  }

  public static void a(ChattingUI paramChattingUI)
  {
    if (!paramChattingUI.gMn);
  }

  protected static void a(ChattingUI paramChattingUI, View paramView, ak paramak, b paramb, String paramString)
  {
    if (!l.qm(paramb.appId))
      return;
    if (paramChattingUI.gMn);
    for (int i = 2; ; i = 1)
    {
      bb localbb = new bb();
      localbb.appId = paramb.appId;
      localbb.chI = "message";
      localbb.pkgName = paramString;
      localbb.bPT = a(paramChattingUI, paramak);
      localbb.fra = paramb.type;
      localbb.bLN = i;
      localbb.frb = paramb.mediaTagName;
      a(paramChattingUI, paramView, localbb);
      return;
    }
  }

  protected static void a(ChattingUI paramChattingUI, View paramView, Object paramObject)
  {
    paramView.setTag(paramObject);
    paramView.setOnClickListener(paramChattingUI.gMi.gNC);
  }

  protected static void a(ChattingUI paramChattingUI, View paramView, String paramString)
  {
    if (!l.qm(paramString))
      return;
    bc localbc = new bc();
    localbc.appId = paramString;
    localbc.chI = "message";
    a(paramChattingUI, paramView, localbc);
  }

  private static void a(ChattingUI paramChattingUI, TextView paramTextView, Bitmap paramBitmap)
  {
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(paramBitmap);
    int i = (int)paramChattingUI.getResources().getDimension(2131558420);
    localBitmapDrawable.setBounds(0, 0, i, i);
    paramTextView.setCompoundDrawables(localBitmapDrawable, null, null, null);
  }

  protected static void a(ChattingUI paramChattingUI, TextView paramTextView, String paramString)
  {
    Bitmap localBitmap = l.b(paramString, 2, com.tencent.mm.an.a.getDensity(paramChattingUI));
    if ((localBitmap != null) && (!localBitmap.isRecycled()))
    {
      a(paramChattingUI, paramTextView, localBitmap);
      return;
    }
    a(paramChattingUI, paramTextView, BitmapFactory.decodeResource(paramChattingUI.getResources(), 2130838947));
  }

  protected static void a(ChattingUI paramChattingUI, b paramb, ak paramak)
  {
    ag localag = h.apq();
    if (localag != null)
      if (!paramChattingUI.gMn)
        break label53;
    label53: for (int i = 2; ; i = 1)
    {
      String str = a(paramChattingUI, paramak);
      localag.a(paramb.appId, str, paramb.type, i, paramb.mediaTagName, paramak.AH());
      return;
    }
  }

  protected static void a(ChattingUI paramChattingUI, b paramb, ak paramak, k paramk)
  {
    ag localag = h.apq();
    int i;
    String str1;
    String str2;
    if (localag != null)
    {
      if (!paramChattingUI.gMn)
        break label65;
      i = 2;
      str1 = a(paramChattingUI, paramak);
      str2 = paramb.appId;
      if (paramk != null)
        break label71;
    }
    label65: label71: for (String str3 = null; ; str3 = paramk.field_packageName)
    {
      localag.a(paramChattingUI, str2, str3, str1, paramb.type, paramb.mediaTagName, i);
      return;
      i = 1;
      break;
    }
  }

  protected static void a(ChattingUI paramChattingUI, b paramb, String paramString, k paramk)
  {
    ag localag = h.apq();
    int i;
    int j;
    if (localag != null)
    {
      if (!paramChattingUI.gMn)
        break label88;
      i = 2;
      if ((paramk == null) || (!com.tencent.mm.pluginsdk.model.app.u.g(paramChattingUI, paramk.field_packageName)))
        break label94;
      j = 3;
      label38: if (paramb.type != 2)
        break label110;
    }
    label88: label94: label110: for (int k = 4; ; k = j)
    {
      String str1 = paramb.appId;
      if (paramk == null);
      for (String str2 = null; ; str2 = paramk.field_packageName)
      {
        localag.a(paramChattingUI, str1, str2, paramString, paramb.type, i, k, paramb.mediaTagName);
        return;
        i = 1;
        break;
        j = 6;
        break label38;
      }
    }
  }

  protected static void a(ChattingUI paramChattingUI, String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean, long paramLong)
  {
    if (((paramString1 == null) || (paramString1.length() == 0)) && ((paramString2 == null) || (paramString2.length() == 0)))
    {
      aa.e("MicroMsg.ChattingItem", "url, lowUrl both are empty");
      return;
    }
    if (ba.bo(paramChattingUI))
      if ((paramString2 != null) && (paramString2.length() > 0))
        break label152;
    while (true)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("msg_id", paramLong);
      localIntent.putExtra("rawUrl", paramString1);
      localIntent.putExtra("version_name", paramString3);
      localIntent.putExtra("version_code", paramInt);
      localIntent.putExtra("usePlugin", paramBoolean);
      localIntent.putExtra("geta8key_username", paramChattingUI.aJe());
      localIntent.setClass(paramChattingUI, WebViewUI.class);
      paramChattingUI.startActivity(localIntent);
      return;
      if ((paramString1 == null) || (paramString1.length() <= 0))
        label152: paramString1 = paramString2;
    }
  }

  protected static boolean a(ChattingUI paramChattingUI, k paramk)
  {
    int i = 2;
    ag localag = h.apq();
    if ((!cj.hX(paramk.field_appId)) && (paramk.field_appId.equals("wxab9305c2bdfa88bd")))
      if ((localag != null) && (!localag.b(paramk)))
        localag.a(paramChattingUI, paramk);
    boolean bool;
    do
    {
      return true;
      return false;
      if ((l.b(paramChattingUI, paramk)) || (localag == null))
        break label195;
      if (cj.hX(paramk.bSI))
        break;
      bool = com.tencent.mm.pluginsdk.model.app.u.ag(paramChattingUI, paramk.bSI);
      Object[] arrayOfObject = new Object[i];
      arrayOfObject[0] = paramk.bSI;
      arrayOfObject[1] = Boolean.valueOf(bool);
      aa.d("MicroMsg.ChattingItem", "oversea game info and gpdownload url is not empty, jump to google play directy:[%s], jump result: [%b]", arrayOfObject);
    }
    while (bool);
    if (paramChattingUI.gMn);
    while (true)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("game_app_id", paramk.field_appId);
      localIntent.putExtra("game_report_from_scene", i);
      com.tencent.mm.ak.a.b(paramChattingUI, "game", ".ui.GameDetailInfoUI", localIntent);
      localag.q(paramk.field_appId, i, i);
      return true;
      i = 1;
    }
    label195: return false;
  }

  protected static PackageInfo ad(Context paramContext, String paramString)
  {
    String str = qb(paramString);
    if (str == null)
      return null;
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(str, 0);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }

  protected static boolean ao(Context paramContext, String paramString)
  {
    if (!com.tencent.mm.pluginsdk.model.app.u.g(paramContext, qb(paramString)));
    k localk;
    do
    {
      return false;
      localk = l.F(paramString, false);
    }
    while ((localk == null) || ((localk.field_status != 1) && (localk.field_status != 0) && (localk.field_status != -1)));
    return true;
  }

  protected static void b(ChattingUI paramChattingUI, View paramView, Object paramObject)
  {
    paramView.setTag(paramObject);
    paramView.setOnClickListener(paramChattingUI.gMi.gNw);
  }

  protected static void c(ChattingUI paramChattingUI, View paramView, Object paramObject)
  {
    paramView.setTag(paramObject);
    paramView.setOnClickListener(paramChattingUI.gMi.gNG);
  }

  private static String qb(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    k localk;
    do
    {
      return null;
      localk = l.F(paramString, true);
    }
    while (localk == null);
    return localk.field_packageName;
  }

  public abstract View a(LayoutInflater paramLayoutInflater, View paramView);

  public abstract void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak);

  public abstract boolean a(ContextMenu paramContextMenu, View paramView, ak paramak);

  public abstract boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak);

  public abstract boolean a(View paramView, ChattingUI paramChattingUI, ak paramak);

  public final int aJh()
  {
    return this.dws;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ce
 * JD-Core Version:    0.6.2
 */
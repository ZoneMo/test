package com.tencent.mm.ui;

import android.content.Context;
import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.mm.ab.j;
import com.tencent.mm.i.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.setting.SendFeedBackUI;
import com.tencent.mm.ui.setting.SettingsAccountInfoUI;
import com.tencent.mm.ui.setting.SettingsPersonalInfoUI;
import com.tencent.mm.ui.setting.SettingsUI;
import com.tencent.mm.ui.tools.fx;
import java.util.HashMap;
import java.util.Map;

public final class dm extends fx
{
  private LayoutInflater ge;
  private int goo = 0;
  private int gop = -1;
  private int goq = -1;
  private int gor = -1;
  private int gos = -1;
  private int got = -1;
  private int gou = -1;
  private int gov = -1;
  private int gow;
  private dn gox;
  private Map goy;
  private boolean goz = false;
  private Context mContext;

  public dm(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
    this.mContext = paramActionBarActivity;
    this.ge = LayoutInflater.from(paramActionBarActivity);
    aNO();
  }

  protected final BaseAdapter aFt()
  {
    if (this.gox == null)
      this.gox = new dn(this, (byte)0);
    return this.gox;
  }

  public final boolean cB()
  {
    int i = 3;
    this.gop = 1;
    if (this.goy != null)
      this.goy.clear();
    this.goy = new HashMap();
    this.goy.put(Integer.valueOf(this.gop), new do(this, this.mContext.getString(2131165829), "", 2130838973));
    this.goq = 2;
    this.goy.put(Integer.valueOf(this.goq), new do(this, this.mContext.getString(2131165831), "", 2130838957));
    if (v.tp())
    {
      this.gor = i;
      this.goy.put(Integer.valueOf(this.gor), new do(this, this.mContext.getString(2131165830), "", 2130838955));
      i = 4;
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    aa.f("MicroMsg.MainSubMenuHelper", "setting pos:%d", arrayOfObject);
    this.gos = i;
    this.goy.put(Integer.valueOf(this.gos), new do(this, this.mContext.getString(2131165818), "", 2130838979));
    int j = i + 1;
    this.got = j;
    this.goy.put(Integer.valueOf(this.got), new do(this, this.mContext.getString(2131165999), "", 2130838960));
    this.gow = (j + 1);
    if (i.rX().x(262145, 266242))
    {
      ((do)this.goy.get(Integer.valueOf(this.gos))).goz = true;
      this.goz = true;
    }
    int k;
    boolean bool2;
    do localdo;
    if (v.tp())
    {
      k = au.a((Integer)be.uz().sr().get(204820), 0) + au.a((Integer)be.uz().sr().get(204817), 0);
      boolean bool1 = i.rX().x(262148, 266248);
      bool2 = i.rX().cc(266248);
      aa.d("MicroMsg.MainSubMenuHelper", "isShowNew : " + bool1);
      aa.d("MicroMsg.MainSubMenuHelper", "isShowDot : " + bool2);
      localdo = (do)this.goy.get(Integer.valueOf(this.gor));
      if (!bool1)
        break label483;
      this.goz = true;
      localdo.goz = true;
    }
    while (true)
    {
      return super.cB();
      label483: if (k > 0)
      {
        this.goz = true;
        localdo.goC = k;
      }
      else if (bool2)
      {
        this.goz = true;
        localdo.goB = bool2;
      }
    }
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((this.mContext instanceof ActionBarActivity))
      ((ActionBarActivity)this.mContext).u();
    if (paramInt == this.goo)
    {
      m.dZN.j(10919, "1-1");
      Intent localIntent4 = new Intent(this.mContext, SettingsPersonalInfoUI.class);
      this.mContext.startActivity(localIntent4);
    }
    do
    {
      return;
      if (paramInt == this.gop)
      {
        m.dZN.j(10919, "1-2");
        if (!be.uz().isSDCardAvailable())
        {
          com.tencent.mm.ui.base.dn.bW(this.mContext);
          return;
        }
        String str = (String)be.uz().sr().get(2);
        Intent localIntent3 = new Intent();
        localIntent3.putExtra("sns_userName", str);
        localIntent3.setFlags(536870912);
        localIntent3.addFlags(67108864);
        int i = au.a((Integer)be.uz().sr().get(68389), 0);
        be.uz().sr().set(68389, Integer.valueOf(i + 1));
        com.tencent.mm.ak.a.b(this.mContext, "sns", ".ui.SnsUserUI", localIntent3);
        return;
      }
      if (paramInt == this.got)
      {
        m.dZN.j(10919, "1-6");
        this.mContext.startActivity(new Intent(this.mContext, SendFeedBackUI.class));
        return;
      }
      if (paramInt == this.gos)
      {
        m.dZN.j(10919, "1-5");
        i.rX().y(262145, 266242);
        Intent localIntent2 = new Intent(this.mContext, SettingsUI.class);
        this.mContext.startActivity(localIntent2);
        return;
      }
      if (paramInt == this.goq)
      {
        m.dZN.j(10919, "1-3");
        com.tencent.mm.ak.a.l(this.mContext, "favorite", ".ui.FavoriteIndexUI");
        return;
      }
      if (paramInt != this.gor)
        break;
      m.dZN.j(10919, "1-4");
      com.tencent.mm.ak.a.b(this.mContext, "mall", ".ui.MallIndexUI", new Intent());
      i.rX().y(262148, 266248);
    }
    while (!be.uz().isSDCardAvailable());
    j localj = new j(11);
    be.uA().d(localj);
    return;
    if (paramInt == this.gov)
    {
      m.dZN.j(10919, "1-7");
      Intent localIntent1 = new Intent(this.mContext, SettingsAccountInfoUI.class);
      this.mContext.startActivity(localIntent1);
      return;
    }
    dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dm
 * JD-Core Version:    0.6.2
 */
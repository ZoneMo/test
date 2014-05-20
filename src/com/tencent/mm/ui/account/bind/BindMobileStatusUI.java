package com.tencent.mm.ui.account.bind;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.BindWordingContent;
import com.tencent.mm.n;
import com.tencent.mm.protocal.a.gf;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class BindMobileStatusUI extends MMWizardActivity
{

  @SuppressLint({"UseSparseArrays"})
  private HashMap cQB = new HashMap();
  private SharedPreferences chz;
  private Button dMp;
  private ImageView gvc;
  private TextView gvd;
  private TextView gve;
  private ImageView gvf;
  private ImageView gvg;
  private Boolean gvh = Boolean.valueOf(true);
  private Boolean gvi = Boolean.valueOf(true);
  private RelativeLayout gvj;
  private RelativeLayout gvk;
  private BindWordingContent gvl;
  private int gvm;
  private boolean gvn;
  private boolean gvo;
  private SparseArray gvp = new SparseArray(3);
  private int status;

  public static void a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(paramContext.getPackageName() + "_preferences", 0);
    SharedPreferences.Editor localEditor1 = localSharedPreferences.edit();
    int m;
    int n;
    label117: int i1;
    label129: gf localgf1;
    int i2;
    label168: gf localgf2;
    if (!paramBoolean1)
    {
      int j = i;
      localEditor1.putBoolean("settings_find_me_by_mobile", j).commit();
      SharedPreferences.Editor localEditor2 = localSharedPreferences.edit();
      boolean bool = false;
      if (!paramBoolean2)
        bool = i;
      localEditor2.putBoolean("settings_recommend_mobilefriends_to_me", bool).commit();
      m = v.tl();
      if (!paramBoolean1)
        break label256;
      n = m | 0x200;
      if (!paramBoolean2)
        break label267;
      i1 = n | 0x100;
      be.uz().sr().set(7, Integer.valueOf(i1));
      localgf1 = new gf();
      localgf1.fIH = 8;
      if (!paramBoolean2)
        break label278;
      i2 = i;
      localgf1.fII = i2;
      be.uz().st().a(new az(23, localgf1));
      localgf2 = new gf();
      localgf2.fIH = 7;
      if (!paramBoolean1)
        break label284;
    }
    while (true)
    {
      localgf1.fII = i;
      be.uz().st().a(new az(23, localgf2));
      com.tencent.mm.plugin.a.a.cHT.nE();
      return;
      int k = 0;
      break;
      label256: n = m & 0xFFFFFDFF;
      break label117;
      label267: i1 = n & 0xFFFFFEFF;
      break label129;
      label278: i2 = 2;
      break label168;
      label284: i = 2;
    }
  }

  private boolean b(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BindMobileStatusUI", "switch change : open = " + paramBoolean + " item value = " + paramInt1 + " functionId = " + paramInt2);
    int i;
    label60: String str;
    Boolean localBoolean;
    if (paramBoolean)
    {
      this.status = (paramInt1 | this.status);
      if (!paramBoolean)
        break label186;
      i = 1;
      this.cQB.put(Integer.valueOf(paramInt2), Integer.valueOf(i));
      str = (String)this.gvp.get(paramInt2);
      if ((this.chz != null) && (str != null) && (str.length() > 0))
      {
        localBoolean = Boolean.valueOf(paramBoolean);
        if ((paramInt2 == 8) || (paramInt2 == 7))
          if (paramBoolean)
            break label192;
      }
    }
    label186: label192: for (boolean bool = true; ; bool = false)
    {
      localBoolean = Boolean.valueOf(bool);
      this.chz.edit().putBoolean(str, localBoolean.booleanValue()).commit();
      return true;
      this.status &= (paramInt1 ^ 0xFFFFFFFF);
      break;
      i = 2;
      break label60;
    }
  }

  protected final void FR()
  {
    boolean bool1 = true;
    this.gvc = ((ImageView)findViewById(i.anw));
    this.gve = ((TextView)findViewById(i.anu));
    this.gvd = ((TextView)findViewById(i.ant));
    this.dMp = ((Button)findViewById(i.anv));
    this.gvf = ((ImageView)findViewById(i.anT));
    this.gvg = ((ImageView)findViewById(i.anS));
    this.gvj = ((RelativeLayout)findViewById(i.anq));
    this.gvk = ((RelativeLayout)findViewById(i.anr));
    switch (this.gvm)
    {
    default:
      if (this.gvl != null);
      switch (this.gvl.cwN.intValue())
      {
      case 0:
      case 1:
      default:
        label184: this.dMp.setVisibility(8);
        a(0, getString(n.bdY), new a(this));
        if (z.zp() == com.tencent.mm.modelfriend.aa.crc)
        {
          this.gvc.setImageResource(h.acw);
          String str = (String)be.uz().sr().get(6);
          if ((str == null) || (str.equals("")))
            be.uz().sr().get(4097);
        }
        break;
      case 2:
      }
      break;
    case 0:
    case 1:
    }
    while (true)
    {
      this.gvf.setOnClickListener(new b(this));
      this.gvg.setOnClickListener(new c(this));
      this.dMp.setOnClickListener(new d(this));
      return;
      this.gvj.setVisibility(8);
      this.gvk.setVisibility(8);
      boolean bool2;
      if (!this.gvn)
      {
        bool2 = bool1;
        label348: b(bool2, 512, 8);
        if (this.gvo)
          break label387;
      }
      while (true)
      {
        b(bool1, 256, 7);
        break;
        bool2 = false;
        break label348;
        label387: bool1 = false;
      }
      this.gvj.setVisibility(0);
      this.gvj.setBackgroundResource(h.acy);
      this.gvk.setVisibility(8);
      break;
      this.gvd.setVisibility(8);
      break label184;
      this.gvc.setImageResource(h.act);
      this.gvd.setVisibility(8);
      this.gve.setText(getString(n.beI));
    }
  }

  protected final int getLayoutId()
  {
    return k.aSy;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
    this.status = v.tl();
    this.gvp.put(8, "settings_find_me_by_mobile");
    this.gvp.put(7, "settings_recommend_mobilefriends_to_me");
    this.gvp.put(32, "settings_autoadd_mobilefriends");
    b(false, 512, 8);
    b(false, 256, 7);
    mn(n.bfj);
    this.gvl = ((BindWordingContent)getIntent().getParcelableExtra("kstyle_bind_wording"));
    this.gvm = getIntent().getIntExtra("kstyle_bind_recommend_show", 0);
    this.gvn = getIntent().getBooleanExtra("Kfind_friend_by_mobile_flag", false);
    this.gvo = getIntent().getBooleanExtra("Krecom_friends_by_mobile_flag", false);
    FR();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      aFs();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    be.uz().sr().set(7, Integer.valueOf(this.status));
    Iterator localIterator = this.cQB.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      int i = ((Integer)localEntry.getKey()).intValue();
      int j = ((Integer)localEntry.getValue()).intValue();
      gf localgf = new gf();
      localgf.fIH = i;
      localgf.fII = j;
      be.uz().st().a(new az(23, localgf));
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BindMobileStatusUI", "switch  " + i + " " + j);
    }
    com.tencent.mm.plugin.a.a.cHT.nE();
    this.cQB.clear();
    super.onPause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.BindMobileStatusUI
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.a.f;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.backup.b.e;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.l;
import com.tencent.mm.plugin.backup.model.q;
import com.tencent.mm.plugin.backup.model.r;
import com.tencent.mm.plugin.backup.model.z;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.cl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public class BakChatUploadingUI extends MMActivity
  implements m, z
{
  private static String TAG = "MicroMsg.BakChatuploadingUI";
  private long cMA = 0L;
  private TextView cMt;
  private ProgressBar cMu;
  private int cNA = -1;
  private ProgressBar cNB;
  private TextView cNC;
  private boolean cND = true;
  private int cNE = 0;
  private LinearLayout cNs;
  private LinearLayout cNt;
  private ImageView cNu;
  private LinearLayout cNv;
  private ProgressBar cNw;
  private TextView cNx;
  private Button cNy;
  private Button cNz;

  private void HU()
  {
    if (this.cND)
    {
      a.a(this, 2131166049, new be(this), new bf(this));
      return;
    }
    HV();
  }

  private void HV()
  {
    Intent localIntent = new Intent(this, BakChatUI.class);
    localIntent.setFlags(67108864);
    startActivity(localIntent);
    finish();
  }

  private void In()
  {
    this.cNt.setVisibility(0);
    if (d.Gk().GH() == 2)
    {
      this.cNu.setImageResource(2130837845);
      this.cNy.setText(getString(2131166051));
    }
    while (true)
    {
      this.cNy.setVisibility(0);
      this.cNz.setVisibility(0);
      this.cNv.setVisibility(8);
      this.cNs.setVisibility(8);
      return;
      this.cNu.setImageResource(2130837849);
      if (d.Gk().Gz())
        this.cNy.setText(getString(2131166054));
      else
        this.cNy.setText(getString(2131166053));
    }
  }

  private void Io()
  {
    this.cNt.setVisibility(8);
    this.cNy.setVisibility(8);
    this.cNz.setVisibility(8);
    this.cNv.setVisibility(0);
    this.cNs.setVisibility(8);
  }

  private void Ip()
  {
    int i = 2;
    de(false);
    dh(true);
    ArrayList localArrayList = getIntent().getStringArrayListExtra("bak_usernames_list");
    LinkedList localLinkedList;
    boolean bool;
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      localLinkedList = new LinkedList();
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
        localLinkedList.add((String)localIterator.next());
      bool = getIntent().getBooleanExtra("needPwd", false);
      if (!bool)
        break label184;
    }
    label164: label184: for (int j = getIntent().getIntExtra("keyHashCode", 0); ; j = 0)
    {
      int k;
      int m;
      if (getIntent().getBooleanExtra("isSelectAll", false))
      {
        k = 1;
        m = r.GR();
        if (d.Gt() != null)
          break label164;
      }
      while (true)
      {
        q.a(this.cNE, com.tencent.mm.platformtools.au.FE(), m, k, i);
        d.Gk().a(localLinkedList, bool, j);
        return;
        k = i;
        break;
        i = 1;
      }
      d.Gk().Gw();
      aa.i(TAG, "continue to upload");
      return;
    }
  }

  protected final void FR()
  {
    this.cNA = 0;
    mn(2131166020);
    a(new au(this));
    a(0, getString(2131166017), new az(this));
    this.cNs = ((LinearLayout)findViewById(2131362043));
    this.cNB = ((ProgressBar)findViewById(2131362044));
    this.cNC = ((TextView)findViewById(2131362045));
    this.cNt = ((LinearLayout)findViewById(2131362046));
    this.cNu = ((ImageView)findViewById(2131362047));
    this.cNw = ((ProgressBar)findViewById(2131362048));
    this.cNx = ((TextView)findViewById(2131362050));
    this.cNv = ((LinearLayout)findViewById(2131362053));
    this.cNy = ((Button)findViewById(2131362051));
    this.cNz = ((Button)findViewById(2131362052));
    this.cMt = ((TextView)findViewById(2131362049));
    this.cMu = ((ProgressBar)findViewById(2131362023));
    this.cNy.setOnClickListener(new ba(this));
    this.cNz.setOnClickListener(new bb(this));
  }

  public final void Hn()
  {
    Io();
    de(true);
    dh(false);
  }

  public final void Ho()
  {
  }

  public final void V(int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent().setClass(this, LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864);
    if (cl.a(new bg(this), this, paramInt1, paramInt2, localIntent) != null)
      return;
    In();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (cl.a(new bi(this), this, paramInt1, paramInt2, new Intent().setClass(this, LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864)) != null);
    while (paramx.getType() != 325)
      return;
    this.cND = false;
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      aa.d(TAG, "查询服务器错误！");
      if (paramInt1 == 4)
      {
        a.a(this, 2131166024, new bk(this), new av(this));
        return;
      }
      h.a(aal(), getString(2131166019), getResources().getDrawable(2130837937), new aw(this)).setCancelable(false);
      return;
    }
    if (((e)paramx).HM())
    {
      com.tencent.mm.ui.base.x localx = h.a(this, getString(2131166023), null, new ax(this), new ay(this));
      localx.setCanceledOnTouchOutside(false);
      localx.setCancelable(false);
      return;
    }
    this.cNE = 2;
    Ip();
    In();
  }

  public final void b(long paramLong1, long paramLong2)
  {
    long l = 0L;
    if (this.cNw == null);
    int i;
    do
    {
      return;
      if (paramLong1 > paramLong2)
        paramLong1 = paramLong2 - 1L;
      if (paramLong2 != l)
        l = 100L * paramLong1 / paramLong2;
      i = (int)l;
    }
    while (i <= this.cNA);
    if (System.currentTimeMillis() - this.cMA > 10000L)
    {
      aa.d(TAG, "offset" + paramLong1 + " totalLen " + paramLong2 + " " + i);
      this.cMA = System.currentTimeMillis();
    }
    this.cNw.setProgress(i);
    this.cNA = i;
    this.cNx.setText("(" + i + "%)");
  }

  public final void c(long paramLong1, long paramLong2)
  {
  }

  protected final int getLayoutId()
  {
    return 2130903106;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.d(TAG, "onCreate");
    com.tencent.mm.model.be.uA().a(325, this);
    d.Gk().a(this);
    FR();
    if (!getIntent().getBooleanExtra("isContinue", false))
    {
      e locale = new e(f.h(com.tencent.mm.platformtools.au.FE().getBytes()));
      com.tencent.mm.model.be.uA().d(locale);
      this.cNs.setVisibility(0);
      this.cNt.setVisibility(8);
      this.cNy.setVisibility(8);
      this.cNz.setVisibility(8);
      this.cNv.setVisibility(8);
      de(true);
      dh(false);
      if (!d.Gk().Gz())
      {
        this.cMt.setText(2131166058);
        return;
      }
      this.cMt.setText(2131166057);
      return;
    }
    this.cND = false;
    if (d.Gk().GH() == 1)
    {
      Io();
      de(true);
      dh(false);
      return;
    }
    de(false);
    dh(true);
    In();
    if (!d.Gk().Gz())
    {
      Ip();
      this.cMt.setText(2131166057);
      this.cMu.setVisibility(0);
      return;
    }
    this.cMt.setText(2131166058);
    this.cMu.setVisibility(4);
    b(d.Gk().getOffset(), d.Gk().vR());
  }

  public void onDestroy()
  {
    aa.d(TAG, "onDestroy");
    com.tencent.mm.model.be.uA().b(325, this);
    d.Gk().b(this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      HU();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    aa.d(TAG, "onPause");
    super.onPause();
    if (d.Gk().GH() == 1)
      d.Gk().GI();
  }

  public void onResume()
  {
    aa.d(TAG, "onResume");
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakChatUploadingUI
 * JD-Core Version:    0.6.2
 */
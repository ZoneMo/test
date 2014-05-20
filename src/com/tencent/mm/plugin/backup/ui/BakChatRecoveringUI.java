package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.model.ar;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.r;
import com.tencent.mm.plugin.backup.model.z;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.cl;

public class BakChatRecoveringUI extends MMActivity
  implements z
{
  private static String TAG = "MicroMsg.BakChatRecoveringUI";
  private int cIK;
  private int cLQ;
  private long cMA = 0L;
  private LinearLayout cMl;
  private ImageView cMm;
  private LinearLayout cMn;
  private ProgressBar cMo;
  private TextView cMp;
  private Button cMq;
  private Button cMr;
  private TextView cMs;
  private TextView cMt;
  private ProgressBar cMu;
  private boolean cMv = false;
  private boolean cMw = false;
  private String cMx;
  private int cMy = -1;
  private int cMz = -1;

  private void HU()
  {
    if (this.cMv)
    {
      setResult(3);
      finish();
      return;
    }
    if (this.cMw)
    {
      d.Gl().Hv();
      a.a(this, 2131166047, new t(this), new u(this));
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

  private void HW()
  {
    if (d.Gl().GH() == 2)
    {
      this.cMm.setImageResource(2130837845);
      this.cMq.setText(getString(2131166051));
    }
    while (true)
    {
      this.cMl.setVisibility(0);
      this.cMq.setVisibility(0);
      this.cMr.setVisibility(0);
      this.cMn.setVisibility(8);
      return;
      this.cMm.setImageResource(2130837843);
      if (d.Gl().Gz())
        this.cMq.setText(getString(2131166054));
      else
        this.cMq.setText(getString(2131166053));
    }
  }

  private void HX()
  {
    this.cMl.setVisibility(8);
    this.cMq.setVisibility(8);
    this.cMr.setVisibility(8);
    this.cMn.setVisibility(0);
  }

  private void HY()
  {
    this.cMl.setVisibility(0);
    this.cMm.setImageResource(2130837843);
    this.cMq.setVisibility(8);
    this.cMr.setVisibility(8);
    this.cMn.setVisibility(8);
  }

  private int a(int paramInt, long paramLong1, long paramLong2)
  {
    long l = 0L;
    if (this.cMo == null);
    int i;
    do
    {
      return paramInt;
      if (paramLong1 > paramLong2)
        paramLong1 = paramLong2 - 1L;
      if (paramLong2 != l)
        l = 100L * paramLong1 / paramLong2;
      i = (int)l;
    }
    while (i <= paramInt);
    if (System.currentTimeMillis() - this.cMA > 10000L)
    {
      aa.d(TAG, "offset " + paramLong1 + " totalLen " + paramLong2 + " nowProgress:" + i + " lastProgress:" + paramInt);
      this.cMA = System.currentTimeMillis();
    }
    this.cMo.setProgress(i);
    this.cMp.setText("(" + i + "%)");
    return i;
  }

  protected final void FR()
  {
    mn(2131166039);
    a(new n(this));
    a(0, getString(2131166031), new o(this));
    this.cMs = ((TextView)findViewById(2131362024));
    this.cMl = ((LinearLayout)findViewById(2131362020));
    this.cMm = ((ImageView)findViewById(2131362021));
    this.cMo = ((ProgressBar)findViewById(2131362022));
    this.cMp = ((TextView)findViewById(2131362025));
    this.cMq = ((Button)findViewById(2131362026));
    this.cMr = ((Button)findViewById(2131362027));
    this.cMn = ((LinearLayout)findViewById(2131362028));
    this.cMt = ((TextView)findViewById(2131362049));
    this.cMu = ((ProgressBar)findViewById(2131362023));
    this.cMq.setOnClickListener(new p(this));
    this.cMr.setOnClickListener(new q(this));
    HW();
  }

  public final void Hn()
  {
    this.cMw = true;
    HY();
    BakChatUI.cMY = this.cLQ;
    b(100L, 100L);
    this.cMz = 0;
    if (this.cMo != null)
      this.cMo.setProgress(0);
    if (this.cMp != null)
      this.cMp.setText("(0%)");
    this.cMs.setText(getString(2131166062));
    de(true);
    dh(false);
    d.Gl().Hx();
  }

  public final void Ho()
  {
    HX();
    this.cMv = true;
  }

  public final void V(int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent().setClass(this, LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864);
    if (cl.a(new v(this), this, paramInt1, paramInt2, localIntent) != null)
      return;
    HW();
  }

  public final void b(long paramLong1, long paramLong2)
  {
    this.cMy = a(this.cMy, paramLong1, paramLong2);
  }

  public final void c(long paramLong1, long paramLong2)
  {
    this.cMs.setText(getString(2131166062));
    this.cMz = a(this.cMz, paramLong1, paramLong2);
  }

  protected final int getLayoutId()
  {
    return 2130903101;
  }

  public void onCreate(Bundle paramBundle)
  {
    boolean bool = true;
    super.onCreate(paramBundle);
    aa.d(TAG, "onCreate");
    FR();
    d.Gl().a(this);
    de(false);
    dh(bool);
    int i;
    if (!getIntent().getBooleanExtra("isContinue", false))
    {
      this.cLQ = getIntent().getIntExtra("recover_svrId", 0);
      this.cIK = getIntent().getIntExtra("recover_svr_size", 0);
      long l1 = getIntent().getLongExtra("recover_svr_time", System.currentTimeMillis());
      int j = (int)((System.currentTimeMillis() - l1) / 3600000L);
      long l2 = au.FE();
      int k = getIntent().getIntExtra("recover_svr_device", -1);
      int m = r.GR();
      if (d.Gt() == null)
        i = 2;
      com.tencent.mm.plugin.backup.model.q.a(this.cIK, j, l2, k, m, i);
      d.Gl().b(Integer.valueOf(this.cLQ), this.cIK);
      HW();
    }
    do
    {
      return;
      if (d.Gl().GH() == i)
      {
        HX();
        de(i);
        dh(false);
        return;
      }
      HW();
      if ((!d.Gl().Hz()) && (d.Gl().Gz()))
        break;
      d.Gl().b(null, -1);
    }
    while (!d.Gl().Hz());
    this.cMw = i;
    HY();
    de(i);
    dh(false);
    return;
    b(d.Gl().getOffset(), d.Gl().vR());
    this.cMs.setText(2131166058);
    this.cMu.setVisibility(4);
  }

  public void onDestroy()
  {
    aa.d(TAG, "onDestroy");
    d.Gl().b(this);
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
    if (d.Gl().GH() == 1)
      d.Gl().GI();
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakChatRecoveringUI
 * JD-Core Version:    0.6.2
 */
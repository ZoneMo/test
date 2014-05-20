package com.tencent.mm.ui.video;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bt;

public class VideoRecorderUI extends MMActivity
{
  private static VideoRecorderUI hti;
  private String bNl = null;
  private String cAv = null;
  private ProgressDialog cIr = null;
  private ay cSS = new ay(new w(this), true);
  private long cSz = -1L;
  private ImageButton ekZ = null;
  private SurfaceHolder gFe = null;
  private TextView hsI;
  private TextView hsJ;
  private String hsQ = null;
  private SurfaceView hsV = null;
  private b hsW;
  private ImageButton hsX;
  private boolean hsY = false;
  private boolean hsZ = false;
  private TextView hta;
  private LinearLayout htb;
  private ImageView htc;
  private ImageView htd;
  private TextView hte;
  private int htf = 0;
  private boolean htg;
  private ImageButton hth;
  private boolean htj = false;
  private boolean htk = true;
  private String htl = null;
  private String htm = null;
  private View htn;
  private View hto;
  private Handler htp = new ag(this);
  SurfaceHolder.Callback htq = new y(this);

  private void aPf()
  {
    if (this.hsY)
    {
      h.a(this, getString(n.bEs), getString(n.ber), new ai(this), new aj(this));
      return;
    }
    finish();
  }

  private void aPg()
  {
    aW().hide();
    this.hte.setText(d.eQ(0));
    this.htn.setVisibility(8);
    this.hto.setVisibility(8);
    this.htd.setVisibility(0);
    this.hsY = false;
    this.htb.setVisibility(0);
    this.hsV.setVisibility(0);
    this.hta.setVisibility(8);
    this.ekZ.setVisibility(8);
    this.hte.setText(d.eQ(0));
    this.htc.setVisibility(8);
    this.hsX.setEnabled(true);
    this.hth.setVisibility(0);
  }

  private void aPh()
  {
    h.a(this, n.bEl, n.ber, new z(this));
  }

  protected final void FR()
  {
    int i = 1;
    this.hsV = ((SurfaceView)findViewById(i.aMB));
    this.htb = ((LinearLayout)findViewById(i.aOC));
    this.gFe = this.hsV.getHolder();
    this.gFe.addCallback(this.htq);
    this.gFe.setType(3);
    this.htd = ((ImageView)findViewById(i.aOF));
    this.hth = ((ImageButton)findViewById(i.aOI));
    this.hte = ((TextView)findViewById(i.aOD));
    this.htn = findViewById(i.aOE);
    this.hto = findViewById(i.aOy);
    this.hte.setText(d.eQ(0));
    this.hsW = new b();
    this.hta = ((TextView)findViewById(i.aOK));
    this.hsI = ((TextView)findViewById(i.aOG));
    this.hsJ = ((TextView)findViewById(i.aOz));
    this.hsX = ((ImageButton)findViewById(i.aOJ));
    this.hsX.setOnClickListener(new ac(this));
    b localb;
    if (com.tencent.mm.compatible.c.d.getNumberOfCameras() > i)
    {
      this.hth.setVisibility(0);
      this.hth.setOnClickListener(new af(this));
      this.ekZ = ((ImageButton)findViewById(i.aOw));
      this.htc = ((ImageView)findViewById(i.aOB));
      this.ekZ.setOnClickListener(new ah(this));
      localb = this.hsW;
      if (this.htg)
        break label345;
    }
    while (true)
    {
      localb.a(i, this.cAv, this.hsQ, this.htl, this.htm);
      return;
      this.hth.setVisibility(4);
      break;
      label345: int j = 0;
    }
  }

  protected final int getLayoutId()
  {
    if (com.tencent.mm.compatible.c.d.pI());
    for (boolean bool = true; ; bool = false)
    {
      this.htg = bool;
      if (this.htg)
        break;
      return k.bbg;
    }
    getWindow().setFlags(1024, 1024);
    setRequestedOrientation(0);
    return k.bbh;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1)
      return;
    if (paramInt1 == 0)
    {
      setResult(-1, paramIntent);
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    MMActivity.bO(this);
    hti = this;
    aW().hide();
    mn(n.bEu);
    a(getString(n.bel), new aa(this), bt.gnO);
    a(new ab(this));
    this.bNl = getIntent().getStringExtra("VideoRecorder_ToUser");
    this.cAv = getIntent().getStringExtra("VideoRecorder_VideoPath");
    this.hsQ = getIntent().getStringExtra("VideoRecorder_VideoFullPath");
    this.htl = getIntent().getStringExtra("VideoRecorder_VideoThumbPath");
    this.htm = getIntent().getStringExtra("VideoRecorder_FileName");
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VideoRecorderUI", "talker :" + this.bNl);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VideoRecorderUI", "videoPath :" + this.cAv + " videoFullPath " + this.hsQ + " videoThumbPath " + this.htl + " KFileName " + this.htm);
    FR();
    aPg();
    be.nS().pause();
    be.nT().of();
  }

  protected void onDestroy()
  {
    hti = null;
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.VideoRecorderUI", "on destroy");
    be.nS().resume();
    be.nT().og();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VideoRecorderUI", "KEYCODE_BACK");
      if (this.hsZ)
        return true;
      aPf();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    this.hsW.aPe();
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.VideoRecorderUI", "onPause");
    super.onPause();
  }

  protected void onResume()
  {
    if ((!this.htk) && ((this.hsW.a(this, false) != 0) || (this.hsW.d(this.gFe) != 0)))
      aPh();
    this.htk = false;
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.VideoRecorderUI", "onResume");
    super.onResume();
  }

  public void onStart()
  {
    super.onStart();
    if (this.htg)
    {
      setRequestedOrientation(0);
      return;
    }
    setRequestedOrientation(1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.VideoRecorderUI
 * JD-Core Version:    0.6.2
 */
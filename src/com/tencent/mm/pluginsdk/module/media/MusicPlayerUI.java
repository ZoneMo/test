package com.tencent.mm.pluginsdk.module.media;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.model.al;
import com.tencent.mm.model.am;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.a.or;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import java.io.IOException;

public abstract class MusicPlayerUI extends MMActivity
{
  private am eBs = new n(this);
  private or fjA = null;
  protected p fjG = p.fjR;
  private boolean fjH = false;
  protected LyricView fjI;
  private View fjJ;
  private ImageView fjK;
  private TextView fjL;
  private TextView fjM;
  private TextView fjN;
  private f fjO;
  private final int fjP = 65537;
  private Handler mHandler = new i(this);
  private long time = 0L;

  private void aqG()
  {
    this.fjL = ((TextView)findViewById(com.tencent.mm.i.aMb));
    this.fjM = ((TextView)findViewById(com.tencent.mm.i.aMd));
    this.fjN = ((TextView)findViewById(com.tencent.mm.i.aMa));
    this.fjK = ((ImageView)findViewById(com.tencent.mm.i.aLZ));
    if (aqO() == null)
    {
      this.fjL.setText("");
      this.fjM.setText("");
      this.fjN.setText("");
    }
    while (true)
    {
      if (this.fjO != null)
        this.fjO.a(this.fjA, acs(), getAppId(), acv());
      a(this.fjK, this.fjA);
      return;
      this.fjL.setText(aqO().fPW);
      this.fjM.setText(aqO().fPX);
      this.fjN.setText(aqO().fPY);
    }
  }

  private void cf(boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        if (this.fjI != null)
        {
          or localor = this.fjA;
          if (localor != null);
        }
        else
        {
          return;
        }
        this.fjI.a(null);
        this.fjI.setKeepScreenOn(false);
        this.fjI.stop();
        aa.i("MicroMsg.MusicPlayerUI", "reset lyric View");
        if ((cj.hX(this.fjA.fQd)) && (paramBoolean))
        {
          aa.i("MicroMsg.MusicPlayerUI", "start synlyric");
          aqN();
          continue;
        }
      }
      finally
      {
      }
      if (!cj.hX(this.fjA.fQd))
      {
        a locala = a.aG(this.fjA.fQd, getString(com.tencent.mm.n.brR));
        this.fjI.a(locala);
        this.fjI.setKeepScreenOn(true);
      }
    }
  }

  protected final void Kb()
  {
    new Handler(getMainLooper()).post(new o(this));
  }

  protected abstract void a(ImageView paramImageView, or paramor);

  protected abstract String acl();

  protected boolean acn()
  {
    return true;
  }

  protected boolean aco()
  {
    return true;
  }

  protected abstract q acp();

  protected abstract boolean acq();

  protected abstract boolean acr();

  protected abstract String acs();

  protected abstract e act();

  protected boolean acu()
  {
    return true;
  }

  protected abstract String acv();

  protected final void aqH()
  {
    if (aqO() == null)
    {
      aa.w("MicroMsg.MusicPlayerUI", "doBeingPlayMusic: but item is null");
      return;
    }
    new Handler(getMainLooper()).post(new l(this));
  }

  protected final void aqI()
  {
    if (aqO() == null)
      return;
    if (this.fjI != null)
    {
      ((ImageView)this.fjJ).setImageResource(h.aiZ);
      this.fjG = p.fjT;
      this.fjI.a(a.aG(aqO().fQd, getString(com.tencent.mm.n.brR)));
      this.fjI.aqB();
      this.fjI.aqD();
      this.fjI.setKeepScreenOn(true);
      return;
    }
    ((TextView)this.fjJ).setText(com.tencent.mm.n.brP);
  }

  protected final void aqJ()
  {
    new Handler(getMainLooper()).post(new m(this));
  }

  protected final void aqK()
  {
    ((ImageView)this.fjJ).setImageResource(h.ahf);
    this.fjG = p.fjR;
    this.fjI.setKeepScreenOn(false);
    this.fjI.stop();
  }

  protected boolean aqL()
  {
    return !acq();
  }

  protected boolean aqM()
  {
    return false;
  }

  protected void aqN()
  {
  }

  protected final or aqO()
  {
    try
    {
      if (this.fjA == null)
        at(getIntent().getByteArrayExtra("music_player_ui"));
      if (this.fjA == null)
        this.fjA = be.nS().oA();
      if (this.fjA == null)
      {
        this.fjA = null;
        be.nS().release();
        aa.e("MicroMsg.MusicPlayerUI", "has no play resource but enter music UI ");
      }
      or localor = this.fjA;
      return localor;
    }
    finally
    {
    }
  }

  protected void at(byte[] paramArrayOfByte)
  {
    if (cj.A(paramArrayOfByte))
    {
      aa.w("MicroMsg.MusicPlayerUI", "updateShakeMusicItem errro");
      return;
    }
    try
    {
      this.fjA = new or().bD(paramArrayOfByte);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.fjA.toString();
      aa.d("MicroMsg.MusicPlayerUI", "updateMusicItem ok: [%s]", arrayOfObject);
      return;
    }
    catch (IOException localIOException)
    {
      aa.w("MicroMsg.MusicPlayerUI", "parser error, ");
      this.fjA = null;
    }
  }

  protected final void c(or paramor)
  {
    this.fjA = paramor;
  }

  protected abstract String getAppId();

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aWB;
  }

  protected final void ke(int paramInt)
  {
    Message localMessage = Message.obtain();
    localMessage.obj = Integer.valueOf(paramInt);
    localMessage.what = 65537;
    this.mHandler.sendMessage(localMessage);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((this.fjO == null) || (this.fjO.onActivityResult(paramInt1, paramInt2, paramIntent)))
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if ((paramConfiguration.orientation == 1) || (paramConfiguration.orientation == 2))
      aa.v("MicroMsg.MusicPlayerUI", "onConfigChanged:" + paramConfiguration.orientation);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (aqL())
      be.nS().release();
    if (aqO() == null)
    {
      finish();
      return;
    }
    this.fjO = new f(aqO(), this, acs(), getAppId(), acv(), act());
    this.fjO.onCreate();
    if ((q.fjV == acp()) && (aqO() != null))
    {
      ((ViewStub)findViewById(com.tencent.mm.i.aRz)).inflate();
      this.fjI = ((LyricView)findViewById(com.tencent.mm.i.ayM));
      this.fjI.release();
      this.fjI.qB(acv());
    }
    while (true)
    {
      this.fjJ = findViewById(com.tencent.mm.i.aMc);
      this.fjJ.setOnClickListener(new j(this));
      if ((this.fjA == null) || ((cj.hX(this.fjA.fQc)) && (cj.hX(this.fjA.fQa)) && (cj.hX(this.fjA.fQb))))
        this.fjJ.setVisibility(8);
      mn(com.tencent.mm.n.brQ);
      a(new k(this));
      aqG();
      if (!acu())
        break;
      aa.d("MicroMsg.MusicPlayerUI", "auto play on create");
      aqH();
      return;
      ((ViewStub)findViewById(com.tencent.mm.i.aRE)).inflate();
    }
  }

  protected void onDestroy()
  {
    be.nS().c(this.eBs);
    if (this.fjI != null)
      this.fjI.release();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (4 == paramInt)
      aa.w("MicroMsg.MusicPlayerUI", "on back key down");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    if (acn())
    {
      this.fjI.aqD();
      this.fjI.aqB();
      this.fjI.stop();
      this.fjI.setKeepScreenOn(false);
    }
    this.fjH = true;
    super.onPause();
  }

  protected void onResume()
  {
    this.fjH = false;
    if (aqO() == null)
      return;
    boolean bool;
    if (aco())
    {
      if ((aqO() != null) && (be.nS().os()))
      {
        this.fjG = p.fjT;
        ((ImageView)this.fjJ).setImageResource(h.aiZ);
        be.nS().a(this.eBs);
        if (acu())
          break label127;
        bool = true;
        cf(bool);
      }
      if (!be.nS().os())
        break label132;
      ((ImageView)this.fjJ).setImageResource(h.aiZ);
      this.fjG = p.fjT;
      this.fjI.aqC();
    }
    while (true)
    {
      super.onResume();
      return;
      label127: bool = false;
      break;
      label132: ((ImageView)this.fjJ).setImageResource(h.ahf);
      this.fjG = p.fjR;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.MusicPlayerUI
 * JD-Core Version:    0.6.2
 */
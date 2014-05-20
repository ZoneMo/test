package com.tencent.mm.ui.player;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.al;
import com.tencent.mm.model.am;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.w;
import com.tencent.mm.protocal.a.nk;
import com.tencent.mm.protocal.a.xb;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

public class MusicDetailUI extends MMActivity
{
  private long bMS;
  private Button cQg;
  private am edd;
  private ImageView hcY;
  private TextView hcZ;
  private xb hda;

  protected final void FR()
  {
    mn(2131165614);
    a(new c(this));
    this.hcY = ((ImageView)findViewById(2131363295));
    this.hcZ = ((TextView)findViewById(2131363296));
    if (be.nS() != null)
    {
      this.hcZ.setText(getString(2131165617) + getString(2131165618) + be.nS().getTitle());
      if ((be.nS().op() == null) || (be.nS().oo() != 0))
        break label286;
      this.bMS = 0L;
    }
    try
    {
      this.bMS = Long.parseLong(be.nS().op());
      label138: if (be.uz().isSDCardAvailable())
      {
        Bitmap localBitmap4 = ag.Ba().c(be.nS().ot(), com.tencent.mm.an.a.getDensity(this));
        if (localBitmap4 != null)
          this.hcY.setImageBitmap(localBitmap4);
      }
      while (true)
      {
        this.cQg = ((Button)findViewById(2131363297));
        this.cQg.setOnClickListener(new d(this));
        if ((be.nS() != null) && (this.edd == null))
        {
          this.edd = new e(this);
          be.nS().a(this.edd);
        }
        if ((com.tencent.mm.ak.a.qc("favorite")) && ((0L != this.bMS) || (this.hda != null)))
          a(0, 2130838978, new f(this));
        return;
        label286: if ((be.nS().op() != null) && (be.nS().oo() == 5))
        {
          if (be.uz().isSDCardAvailable())
          {
            Bitmap localBitmap3 = ag.Ba().a(be.nS().ot(), true, com.tencent.mm.an.a.getDensity(this), false, false);
            if (localBitmap3 != null)
              this.hcY.setImageBitmap(localBitmap3);
          }
        }
        else if ((be.nS().op() != null) && (be.nS().oo() == 6))
        {
          if (be.uz().isSDCardAvailable())
          {
            Bitmap localBitmap2 = ag.Ba().a(be.nS().ot(), true, com.tencent.mm.an.a.getDensity(this), false, false);
            if (localBitmap2 != null)
              this.hcY.setImageBitmap(localBitmap2);
          }
        }
        else if ((be.nS().op() == null) || (be.nS().oo() != 4))
        {
          nk localnk = new nk();
          localnk.fzM = be.nS().oJ();
          localnk.fOn = be.nS().or();
          localnk.fOo = be.nS().oq();
          if (aq.apy() != null)
          {
            Bitmap localBitmap1 = aq.apy().a(localnk, this.hcY, hashCode());
            if (localBitmap1 == null)
            {
              aq.apy().P(this.hcY);
              aq.apy().c(localnk, this.hcY, hashCode());
            }
            else
            {
              this.hcY.setImageBitmap(localBitmap1);
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      break label138;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903559;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.nS().c(this.edd);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.MusicDetailUI
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.pluginsdk.ui.tools;

import android.support.v4.app.FragmentActivity;
import android.view.KeyEvent;
import android.view.Menu;
import com.tencent.mm.pluginsdk.ui.VoiceSearchLayout;
import com.tencent.mm.pluginsdk.ui.bh;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.ActionBarSearchView;
import com.tencent.mm.ui.tools.eo;

public final class u extends eo
{
  private boolean fuB = true;
  private int fuC;
  private int fuD;
  private w fuE;
  private VoiceSearchLayout fuF;
  private bh fuG = new v(this);

  public final void a(FragmentActivity paramFragmentActivity, Menu paramMenu)
  {
    super.a(paramFragmentActivity, paramMenu);
    if (this.fuF != null)
      this.fuF.a(this.fuG);
  }

  public final void a(w paramw)
  {
    this.fuE = paramw;
    a(paramw);
  }

  protected final boolean auT()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(this.fuB);
    VoiceSearchLayout localVoiceSearchLayout = this.fuF;
    boolean bool = false;
    if (localVoiceSearchLayout == null)
      bool = true;
    arrayOfObject[1] = Boolean.valueOf(bool);
    aa.e("MicroMsg.VoiceSearchViewHelper", "check has voice search, Enable %B, layout is null ? %B", arrayOfObject);
    return this.fuB;
  }

  protected final void auU()
  {
    aa.d("MicroMsg.VoiceSearchViewHelper", "do require voice search");
    if (this.hgH != null)
    {
      this.hgH.ek(false);
      this.hgH.el(false);
    }
    if ((this.fuF != null) && (this.fuF.getVisibility() == 8))
    {
      aa.d("MicroMsg.VoiceSearchViewHelper", "do voice search layout start");
      this.fuF.ki(this.fuD);
    }
  }

  protected final void auV()
  {
    cancel();
  }

  public final void cP(boolean paramBoolean)
  {
    this.fuB = paramBoolean;
  }

  public final void cancel()
  {
    aa.d("MicroMsg.VoiceSearchViewHelper", "do cancel");
    if (this.fuF != null)
      this.fuF.arO();
    if (this.hgH != null)
    {
      this.hgH.ek(true);
      this.hgH.el(true);
    }
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (4 == paramInt)
    {
      if ((this.fuF != null) && (this.fuF.getVisibility() == 0));
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(bool);
        aa.e("MicroMsg.VoiceSearchViewHelper", "on back key down, try hide voice search panel, it is visiable[%B]", arrayOfObject);
        cancel();
        if (!bool)
          break;
        return true;
      }
    }
    aa.d("MicroMsg.VoiceSearchViewHelper", "not match key code, pass to super");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final void onPause()
  {
    aNE();
    cancel();
  }

  public final void r(VoiceSearchLayout paramVoiceSearchLayout)
  {
    this.fuF = paramVoiceSearchLayout;
    this.fuD = 1;
    if (1 == this.fuD)
    {
      this.fuC = 2;
      return;
    }
    this.fuC = 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.u
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.pluginsdk.ui.simley;

import android.content.Context;
import android.util.AttributeSet;
import com.tencent.mm.pluginsdk.ui.ChatFooterPanel;
import com.tencent.mm.pluginsdk.ui.aw;
import com.tencent.mm.pluginsdk.ui.h;
import com.tencent.mm.sdk.platformtools.aa;

public class VPSmileyPanel extends ChatFooterPanel
  implements n
{
  public static int VERSION = 0;
  private final String TAG = "MicroMsg.SmileyPanel.Main";
  private g fsS;
  private k ftU;

  public VPSmileyPanel(Context paramContext)
  {
    super(paramContext, null);
    init();
  }

  public VPSmileyPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void init()
  {
    this.fsS = new g();
    this.ftU = new k(getContext(), this.fsS, this);
    VERSION = a.fsB.VERSION;
  }

  public final void aqY()
  {
    aa.d("MicroMsg.SmileyPanel.Main", "dealOrientationChange");
  }

  public final void aqZ()
  {
    this.fki = null;
    if (this.ftU != null)
      this.ftU.aut();
  }

  public final void ara()
  {
    aa.d("MicroMsg.SmileyPanel.Main", "vpsmiley ----- reflesh");
    VERSION = 1 + VERSION;
    if (System.currentTimeMillis() <= this.fsS.atF())
      aa.d("MicroMsg.SmileyPanel.Main", "already refresh so pass reflesh");
    while (!this.fsS.atY())
      return;
    this.ftU.a(f.fta);
  }

  public final void arb()
  {
    aa.d("MicroMsg.SmileyPanel.Main", "vpsmiley ----- hideCustomBtn");
    this.fsS.auh();
    this.ftU.auC();
  }

  public final aw aty()
  {
    return (aw)this.fkj;
  }

  public final h auE()
  {
    return this.fki;
  }

  public final void auJ()
  {
    this.fsS.aua();
  }

  public final int auK()
  {
    return this.fsS.aui();
  }

  public final void ch(boolean paramBoolean)
  {
    this.ftU.cN(paramBoolean);
  }

  public final void ci(boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    arrayOfObject[1] = Boolean.valueOf(false);
    aa.e("MicroMsg.SmileyPanel.Main", "vpsmiley ----- hideQQSmiley: %B, hideEmojiSmiley: %B", arrayOfObject);
    this.fsS.cH(paramBoolean);
    this.fsS.atT();
  }

  public final void cj(boolean paramBoolean)
  {
    aa.d("MicroMsg.SmileyPanel.Main", "vpsmiley ----- hideSendButton");
    this.ftU.cM(paramBoolean);
    this.fsS.cI(true);
  }

  public final void destroy()
  {
    if (this.ftU != null)
      this.ftU.aus();
    if (this.fsS != null)
      this.fsS.auk();
  }

  public final void kR(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.SmileyPanel.Main", "vpsmiley ----- setPortHeightPx: %d", arrayOfObject);
    this.fsS.kN(paramInt);
  }

  public final void onPause()
  {
    aa.d("MicroMsg.SmileyPanel.Main", "onPause");
    this.fsS.cL(false);
    this.fsS.atN();
    this.fsS.atK();
  }

  public final void onResume()
  {
    aa.d("MicroMsg.SmileyPanel.Main", "onResume");
    this.fsS.cL(true);
    this.fsS.atM();
    this.fsS.atL();
    this.ftU.auq();
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void reset()
  {
    aa.d("MicroMsg.SmileyPanel.Main", "vpsmiley ----- reset");
    if (this.fsS.atY())
      this.ftU.auB();
  }

  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0)
      this.ftU.d(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.VPSmileyPanel
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.pluginsdk.ui.simley;

import android.graphics.Bitmap;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.aw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.w;
import com.tencent.mm.ui.base.MMRadioImageButton;

public abstract class e
{
  private final String TAG = "MicroMsg.SmileyPanel.Tab";
  private String cZs;
  private int fsO;
  private i fsP;
  private MMRadioImageButton fsQ;
  private int fsR;
  private g fsS;
  private int fsT;
  private int fsU;
  protected k fsV;
  private int fsW;
  private boolean fsX = true;

  public e(String paramString, int paramInt, g paramg, k paramk, MMRadioImageButton paramMMRadioImageButton, boolean paramBoolean)
  {
    if (cj.hX(paramString))
    {
      aa.i("MicroMsg.SmileyPanel.Tab", "catch invalid Smiley Tab want add??!!");
      this.fsX = false;
    }
    do
    {
      return;
      this.cZs = paramString;
      this.fsQ = paramMMRadioImageButton;
      this.fsS = paramg;
      this.fsV = paramk;
      this.fsR = paramInt;
    }
    while (!paramBoolean);
    g localg = this.fsS;
    String str = this.cZs;
    int j;
    int k;
    label111: int i;
    if (str.equals("TAG_DEFAULT_TAB"))
      if (localg.atR())
      {
        j = 0;
        if (!localg.atS())
          break label245;
        k = 0;
        i = j + k;
      }
    while (true)
    {
      this.fsO = i;
      this.fsT = this.fsS.qY(this.cZs);
      this.fsU = this.fsS.qZ(this.cZs);
      this.fsW = this.fsS.ab(this.cZs, this.fsT);
      i locali = new i();
      locali.fts = paramMMRadioImageButton.getDrawable();
      this.fsP = locali;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.cZs;
      arrayOfObject[1] = Integer.valueOf(paramInt);
      aa.d("MicroMsg.SmileyPanel.Tab", "smiley panel tab: productId: %s, startIndex: %d", arrayOfObject);
      return;
      j = localg.atP();
      break;
      label245: k = localg.atQ();
      break label111;
      if (str.equals(String.valueOf(w.ggX)))
      {
        if (be.uz().isSDCardAvailable())
          i = 1 + com.tencent.mm.pluginsdk.h.apj().KY();
        else
          i = 1;
      }
      else if (be.uz().isSDCardAvailable())
        i = com.tencent.mm.pluginsdk.h.apj().jd(str);
      else
        i = 0;
    }
  }

  public final String Lg()
  {
    return this.cZs;
  }

  public final void a(i parami)
  {
    if (parami == null)
      return;
    this.fsP = parami;
  }

  public final boolean a(k paramk, g paramg)
  {
    this.fsV = paramk;
    this.fsS = paramg;
    aa.d("MicroMsg.SmileyPanel.Tab", "refresh cache");
    i locali = this.fsP;
    if (locali == null);
    do
    {
      return false;
      if (locali.fts != null)
      {
        this.fsQ.setImageDrawable(locali.fts);
        return true;
      }
      if ((locali.WE != null) && (!locali.WE.isRecycled()))
      {
        this.fsQ.setImageBitmap(locali.WE);
        return true;
      }
    }
    while (locali.resource <= 0);
    this.fsQ.setImageResource(locali.resource);
    return true;
  }

  public final com.tencent.mm.pluginsdk.ui.h atA()
  {
    return this.fsV.auz();
  }

  public final int atB()
  {
    return this.fsW;
  }

  public final MMRadioImageButton atC()
  {
    return this.fsQ;
  }

  public final g atr()
  {
    return this.fsS;
  }

  public final int ats()
  {
    return this.fsO;
  }

  public final int att()
  {
    return this.fsR;
  }

  public final boolean atu()
  {
    return "TAG_DEFAULT_TAB".equals(this.cZs);
  }

  public final int atv()
  {
    return this.fsT * this.fsU;
  }

  public final int atw()
  {
    return (int)Math.ceil(this.fsO / atv());
  }

  public final int atx()
  {
    return this.fsU;
  }

  public final aw aty()
  {
    return this.fsV.aty();
  }

  public final SmileyPanelVP atz()
  {
    return this.fsV.auA();
  }

  public final boolean b(k paramk, g paramg)
  {
    aa.d("MicroMsg.SmileyPanel.Tab", "deep refresh cache");
    boolean bool = a(paramk, paramg);
    this.fsR = 0;
    this.fsT = this.fsS.qY(this.cZs);
    this.fsU = this.fsS.qZ(this.cZs);
    this.fsW = this.fsS.ab(this.cZs, this.fsT);
    return bool;
  }

  public final int getType()
  {
    String str = this.cZs;
    if (str.equals("TAG_DEFAULT_TAB"))
      return 20;
    if (str.equals(String.valueOf(w.ggX)))
      return 25;
    return 23;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.e
 * JD-Core Version:    0.6.2
 */
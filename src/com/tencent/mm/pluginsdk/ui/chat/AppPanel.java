package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.e.c;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.MMDotView;
import com.tencent.mm.ui.base.MMFlipper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AppPanel extends LinearLayout
{
  private static int efa = 215;
  private static int efb = 158;
  private Context context;
  private boolean cvd = false;
  private boolean efl = false;
  private int efm;
  private int efn;
  private MMFlipper efo;
  private MMDotView efp;
  private int fmA = -1;
  private boolean fmz = true;
  private boolean fpA = true;
  private boolean fpB = true;
  private boolean fpC = true;
  private boolean fpD = true;
  private boolean fpE = true;
  private boolean fpF = true;
  private boolean fpG = true;
  private boolean fpH = true;
  private boolean fpI = true;
  private boolean fpJ = true;
  private int fpK = 0;
  private int fpL = 0;
  private final int fpM = 2;
  private d fpN = new g(this);
  private int fpj = 9;
  private List fpm;
  private final boolean[] fps = new boolean[9];
  private l fpt;
  private m fpu;
  private List fpv;
  private int fpw = this.fpj;
  private boolean fpx = true;
  private boolean fpy = true;
  private boolean fpz = true;

  public AppPanel(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    init();
  }

  public AppPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    init();
  }

  private int arB()
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    if (localDisplay.getWidth() < localDisplay.getHeight())
      return 1;
    return 2;
  }

  private void aso()
  {
    int i = 1;
    int j = this.fps.length;
    for (int k = 0; k < j; k++)
      this.fps[k] = i;
    if (!this.fpy)
      this.fps[i] = false;
    while (true)
    {
      if (!this.fpz)
      {
        this.fps[0] = false;
        i++;
      }
      if (!this.fpE)
      {
        this.fps[2] = false;
        i++;
      }
      if (!this.fpA)
      {
        this.fps[3] = false;
        i++;
      }
      if (!this.fpB)
      {
        this.fps[4] = false;
        i++;
      }
      if (!this.fpG)
      {
        this.fps[5] = false;
        i++;
      }
      if ((!this.fpI) || (!this.fpH))
      {
        this.fps[6] = false;
        i++;
      }
      if ((!this.fpD) || (!this.fpC))
      {
        this.fps[7] = false;
        i++;
      }
      if (!this.fpJ)
      {
        this.fps[8] = false;
        i++;
      }
      this.fpj = (9 - i);
      return;
      i = 0;
    }
  }

  private void asp()
  {
    aa.d("MicroMsg.AppPanel", "AppPanel initFlipper");
    this.efo.removeAllViews();
    this.efo.a(new e(this));
    this.efo.a(new f(this));
    asr();
  }

  private void asq()
  {
    if ((this.efm == 0) || (this.efn == 0))
      return;
    this.fpv = new ArrayList();
    this.efo.removeAllViews();
    int i = com.tencent.mm.sdk.platformtools.e.a(this.context, 73.0F);
    int j = com.tencent.mm.sdk.platformtools.e.a(this.context, 90.0F);
    requestLayout();
    int k = this.efm / i;
    int m = this.efn / j;
    if (m > 2)
      m = 2;
    int n = (this.efn - j * m) / (m + 1);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(n);
    aa.e("MicroMsg.AppPanel", "jacks spacing2 = %d", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(this.efm);
    arrayOfObject2[1] = Integer.valueOf(this.efn);
    aa.e("MicroMsg.AppPanel", "in initAppGrid, gridWidth = %d, gridHeight = %d", arrayOfObject2);
    if (k == 0)
      k = 1;
    if (m == 0)
      m = 1;
    int i1 = k * m;
    if (this.fpF);
    for (this.fpw = (this.fpj + this.fpm.size()); ; this.fpw = this.fpj)
    {
      com.tencent.mm.ak.a.avr();
      int i2 = (int)Math.ceil((1 + this.fpw) / i1);
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Integer.valueOf(this.fpw);
      arrayOfObject3[1] = Integer.valueOf(i1);
      arrayOfObject3[2] = Integer.valueOf(i2);
      aa.e("MicroMsg.AppPanel", "in initAppGrid, totalItemCount = %d, itemsPerPage = %d, pageCount = %d", arrayOfObject3);
      for (int i3 = 0; i3 < i2; i3++)
      {
        AppGrid localAppGrid = (AppGrid)inflate(this.context, k.aSk, null);
        localAppGrid.am(this.fpm);
        localAppGrid.a(i3, this.fpw, i1, i2, k, this.fpj);
        localAppGrid.ku(n);
        this.efo.addView(localAppGrid, new LinearLayout.LayoutParams(-1, -2));
        this.fpv.add(localAppGrid);
      }
    }
    if (this.fpv != null)
    {
      Iterator localIterator = this.fpv.iterator();
      while (localIterator.hasNext())
        ((AppGrid)localIterator.next()).a(this.fpN);
    }
    if (this.fpv.size() <= 1)
      this.efp.setVisibility(4);
    while (true)
    {
      aso();
      return;
      this.efp.setVisibility(0);
      this.efp.mX(this.fpv.size());
      int i4 = this.efo.aGP();
      this.efo.nb(i4);
      this.efp.mY(i4);
    }
  }

  private void init()
  {
    int i = 1;
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    if (localDisplay.getWidth() < localDisplay.getHeight())
    {
      this.fpK = localDisplay.getWidth();
      this.fpL = localDisplay.getHeight();
    }
    while (true)
    {
      View.inflate(this.context, k.aSn, this);
      this.efp = ((MMDotView)findViewById(i.amv));
      this.efo = ((MMFlipper)findViewById(i.amw));
      try
      {
        String str = com.tencent.mm.e.d.qA().getValue("ShowAPPSuggestion");
        if ((cj.hX(str)) || (Integer.valueOf(str).intValue() != i));
        for (this.fpm = com.tencent.mm.pluginsdk.model.app.l.aT(this.context); ; this.fpm = com.tencent.mm.pluginsdk.model.app.l.aU(this.context))
        {
          asp();
          if ((0x100000 & v.tq()) != 0)
            break label255;
          j = i;
          this.fpD = j;
          com.tencent.mm.e.d.qB();
          if (com.tencent.mm.e.a.qo() == 2)
            break label261;
          bool = com.tencent.mm.ak.a.avr();
          localAppPanel = this;
          localAppPanel.fpI = bool;
          aso();
          return;
          this.fpK = localDisplay.getHeight();
          this.fpL = localDisplay.getWidth();
          break;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          boolean bool;
          AppPanel localAppPanel;
          Object[] arrayOfObject = new Object[bool];
          arrayOfObject[0] = localException.getMessage();
          aa.b("MicroMsg.AppPanel", "exception in appPanel init, %s", arrayOfObject);
          this.fpm = com.tencent.mm.pluginsdk.model.app.l.aT(this.context);
          continue;
          label255: int j = 0;
          continue;
          label261: if ((0x400000 & v.tq()) == 0)
          {
            localAppPanel = this;
          }
          else
          {
            localAppPanel = this;
            bool = false;
          }
        }
      }
    }
  }

  public final void a(l paraml)
  {
    this.fpt = paraml;
  }

  public final void a(m paramm)
  {
    this.fpu = paramm;
  }

  public final void aqY()
  {
    this.efl = false;
    this.efo.nb(0);
    asp();
    requestLayout();
  }

  public final void ara()
  {
    aa.v("MicroMsg.AppPanel", "app panel refleshed");
    try
    {
      String str = com.tencent.mm.e.d.qA().getValue("ShowAPPSuggestion");
      if ((cj.hX(str)) || (Integer.valueOf(str).intValue() != 1));
      for (this.fpm = com.tencent.mm.pluginsdk.model.app.l.aT(this.context); ; this.fpm = com.tencent.mm.pluginsdk.model.app.l.aU(this.context))
      {
        int i = this.efo.aGP();
        asq();
        this.efo.nb(i);
        this.efp.mY(i);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getMessage();
        aa.b("MicroMsg.AppPanel", "exception in appPanel init, %s", arrayOfObject);
        this.fpm = com.tencent.mm.pluginsdk.model.app.l.aT(this.context);
      }
    }
  }

  public final void ash()
  {
    this.fpx = false;
    aso();
  }

  public final void asi()
  {
    this.fpy = false;
    aso();
  }

  public final void asj()
  {
    this.fpz = false;
    aso();
  }

  public final void ask()
  {
    this.fpA = false;
    aso();
  }

  public final void asl()
  {
    this.fpB = false;
    aso();
  }

  public final void asm()
  {
    this.fpE = false;
    aso();
  }

  public final void asn()
  {
    this.fpF = false;
    aso();
  }

  public final void asr()
  {
    if (this.fmz)
    {
      if (arB() == 2)
      {
        aa.d("MicroMsg.AppPanel", "initFlipper, landscape");
        View localView2 = findViewById(i.amu);
        LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)localView2.getLayoutParams();
        localLayoutParams2.height = com.tencent.mm.sdk.platformtools.e.a(this.context, efb);
        localLayoutParams2.width = this.fpL;
        localView2.setLayoutParams(localLayoutParams2);
      }
    }
    else
      return;
    this.fmz = false;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(efa);
    aa.e("MicroMsg.AppPanel", "initFlipper, portrait: %d", arrayOfObject);
    View localView1 = findViewById(i.amu);
    LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView1.getLayoutParams();
    if (this.fmA > 0);
    for (int i = this.fmA; ; i = com.tencent.mm.sdk.platformtools.e.a(this.context, efa))
    {
      localLayoutParams1.height = i;
      localLayoutParams1.width = this.fpK;
      localView1.setLayoutParams(localLayoutParams1);
      return;
    }
  }

  public final void cw(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      this.fpC = bool;
      aso();
      aa.d("MicroMsg.AppPanel", "enable " + this.fpC + " isVoipPluginEnable " + this.fpD);
      return;
    }
  }

  public final void cx(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      this.fpH = bool;
      aso();
      aa.d("MicroMsg.AppPanel", "enable " + this.fpI + " isVoipAudioEnable " + this.fpH);
      return;
    }
  }

  public final void cy(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      this.fpJ = bool;
      aso();
      return;
    }
  }

  public final void cz(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      this.fpG = bool;
      aso();
      aa.d("MicroMsg.AppPanel", "disableTalkroom enable " + this.fpG);
      return;
    }
  }

  public final void kx(int paramInt)
  {
    if (this.fmA != paramInt)
    {
      this.fmA = paramInt;
      this.fmz = true;
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if ((paramConfiguration.orientation == 1) || (paramConfiguration.orientation == 2))
    {
      aa.d("MicroMsg.AppPanel", "onConfigChanged:" + paramConfiguration.orientation);
      aqY();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.AppPanel
 * JD-Core Version:    0.6.2
 */
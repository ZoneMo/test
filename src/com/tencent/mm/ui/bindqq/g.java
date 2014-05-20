package com.tencent.mm.ui.bindqq;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.o.a;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.ch;

public final class g
  implements m
{
  private Context context;
  private com.tencent.mm.ui.base.x dpV;
  private View foU;
  private o gJt;
  private SecurityImage gof;
  private ch gqJ;
  private String gro;
  private String grp;
  private String grq;
  private byte[] grr;

  public g(Context paramContext, o paramo)
  {
    this.context = paramContext;
    this.foU = null;
    this.gqJ = null;
    this.dpV = null;
    this.gro = "";
    this.gof = null;
    this.grr = null;
    this.grp = "";
    this.gJt = paramo;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if ((paramx == null) || (paramx.getType() != 144));
    do
    {
      do
      {
        return;
        if (this.gqJ != null)
        {
          this.gqJ.dismiss();
          this.gqJ = null;
        }
        this.grp = ((a)paramx).xt();
        this.grr = ((a)paramx).xs();
      }
      while (((this.gJt != null) && (this.gJt.j(paramInt1, paramInt2, paramString))) || (paramInt1 != 4));
      switch (paramInt2)
      {
      default:
        return;
      case -72:
        this.dpV = com.tencent.mm.ui.base.h.c(this.context, com.tencent.mm.n.bgX, com.tencent.mm.n.ber);
        return;
      case -6:
      case 10000:
      }
    }
    while (!be.se());
    if (this.gof == null)
    {
      this.gof = com.tencent.mm.ui.applet.i.a(this.context, com.tencent.mm.n.bvU, false, this.grr, this.grp, this.grq, new l(this), null, new n(this), new p(this));
      return;
    }
    this.gof.b(false, this.grr, this.grp, this.grq);
    return;
    k localk = new k(this);
    this.dpV = com.tencent.mm.ui.base.h.a(this.context, this.context.getString(com.tencent.mm.n.bgJ), this.context.getString(com.tencent.mm.n.ber), localk, null);
  }

  public final void aIC()
  {
    this.foU = View.inflate(this.context, com.tencent.mm.k.aZm, null);
    EditText localEditText = (EditText)this.foU.findViewById(com.tencent.mm.i.aIX);
    localEditText.setHint(com.tencent.mm.n.bgV);
    h localh = new h(this, localEditText);
    i locali = new i(this);
    this.dpV = com.tencent.mm.ui.base.h.a(this.context, this.context.getString(com.tencent.mm.n.bgW), this.foU, localh, locali);
  }

  public final void aID()
  {
    this.dpV = null;
  }

  public final void onDetach()
  {
    be.uA().b(144, this);
    if (this.gJt != null)
      this.gJt.aIB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.g
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.e.e;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.bc;

public final class fv extends bc
{
  private String bNl;
  private String cTj;
  private String clp;
  private boolean gJU;
  private fw gOB;

  public fv(Context paramContext, ak paramak, String paramString1, String paramString2, boolean paramBoolean)
  {
    super(paramContext, paramak);
    this.bNl = paramString1;
    this.clp = paramString2;
    this.gJU = paramBoolean;
  }

  private String F(ak paramak)
  {
    if (paramak.rO() == 1)
      return this.clp;
    return this.bNl;
  }

  private CharSequence G(ak paramak)
  {
    if (paramak.DL() == 9223372036854775807L)
      return "";
    return e.b(this.context, paramak.DL(), true);
  }

  public final void FZ()
  {
    setCursor(be.uz().sw().aV(this.bNl, this.cTj));
    if ((this.gOB != null) && (!au.hX(this.cTj)))
      this.gOB.nA(getCount());
    super.notifyDataSetChanged();
  }

  protected final void Ga()
  {
    closeCursor();
    FZ();
  }

  public final void a(fw paramfw)
  {
    this.gOB = paramfw;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    fx localfx;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903656, null);
      localfx = new fx((byte)0);
      localfx.cMS = ((ImageView)paramView.findViewById(2131362448));
      localfx.cPP = ((TextView)paramView.findViewById(2131362450));
      localfx.cPQ = ((TextView)paramView.findViewById(2131362451));
      localfx.gOC = ((TextView)paramView.findViewById(2131363604));
      paramView.setTag(localfx);
    }
    ak localak;
    while (true)
    {
      localak = (ak)getItem(paramInt);
      if (localak != null)
      {
        if ((!this.gJU) || (localak.rO() != 0))
          break;
        String str1 = localak.getContent();
        String str2 = bv.dy(str1);
        if (!au.hX(str2))
        {
          c.a(localfx.cMS, str2);
          TextView localTextView4 = localfx.cPP;
          localTextView4.setText(com.tencent.mm.ao.b.e(this.context, w.cu(str2), (int)localfx.cPP.getTextSize()));
        }
        localfx.cPQ.setText(G(localak));
        String str3 = bv.dz(str1);
        TextView localTextView3 = localfx.gOC;
        localTextView3.setText(com.tencent.mm.ao.b.c(this.context, str3, (int)localfx.gOC.getTextSize()));
      }
      return paramView;
      localfx = (fx)paramView.getTag();
    }
    c.a(localfx.cMS, F(localak));
    TextView localTextView1 = localfx.cPP;
    localTextView1.setText(com.tencent.mm.ao.b.e(this.context, w.cu(F(localak)), (int)localfx.cPP.getTextSize()));
    localfx.cPQ.setText(G(localak));
    TextView localTextView2 = localfx.gOC;
    localTextView2.setText(com.tencent.mm.ao.b.c(this.context, localak.getContent(), (int)localfx.gOC.getTextSize()));
    return paramView;
  }

  public final void ih(String paramString)
  {
    this.cTj = paramString;
    if (!au.hX(this.cTj))
    {
      closeCursor();
      FZ();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fv
 * JD-Core Version:    0.6.2
 */
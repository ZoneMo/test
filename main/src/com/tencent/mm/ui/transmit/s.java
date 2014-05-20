package com.tencent.mm.ui.transmit;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.bc;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public final class s extends bc
{
  protected MMActivity bLH;
  private String cIs;
  protected List cKz = null;
  private HashMap gXU;
  private boolean hrL = false;

  private s(Context paramContext)
  {
    super(paramContext, new n());
    super.a(null);
    this.bLH = ((MMActivity)paramContext);
    this.gXU = new HashMap();
  }

  public s(Context paramContext, byte paramByte)
  {
    this(paramContext);
  }

  public final void FZ()
  {
    setCursor(be.uz().sx().a(w.chM, this.cKz, this.hrL, this.cIs));
    super.notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void ca(String paramString)
  {
    aa.f("MicroMsg.ConversationAdapter", "notify [%s]", new Object[] { paramString });
    if ((paramString != null) && (!paramString.equals("")) && (this.gXU != null))
      this.gXU.remove(paramString);
    while (true)
    {
      super.ca(paramString);
      return;
      if (this.gXU != null)
        this.gXU.clear();
    }
  }

  public final void e(List paramList, boolean paramBoolean)
  {
    if (paramList == null)
      paramList = new LinkedList();
    this.cKz = paramList;
    this.hrL = paramBoolean;
    ca(null);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    n localn = (n)getItem(paramInt);
    u localu;
    t localt;
    if (paramView == null)
    {
      localu = new u();
      paramView = View.inflate(this.bLH, 2130903668, null);
      localu.cMS = ((ImageView)paramView.findViewById(2131362448));
      localu.cPP = ((TextView)paramView.findViewById(2131362450));
      localu.hrO = ((TextView)paramView.findViewById(2131363624));
      localu.eOc = ((ImageView)paramView.findViewById(2131363623));
      paramView.setTag(localu);
      localt = (t)this.gXU.get(localn.getUsername());
      if (localt == null)
      {
        localt = new t(this, (byte)0);
        localt.nickName = com.tencent.mm.ao.b.e(this.bLH, w.cu(localn.getUsername()), (int)localu.cPP.getTextSize());
        if (!w.cp(localn.getUsername()))
          break label276;
      }
    }
    label276: for (localt.hrM = ("(" + r.ci(localn.getUsername()) + ")"); ; localt.hrM = null)
    {
      this.gXU.put(localn.getUsername(), localt);
      localu.cPP.setText(localt.nickName);
      localu.hrO.setText(localt.hrM);
      c.a(localu.cMS, localn.getUsername());
      return paramView;
      localu = (u)paramView.getTag();
      break;
    }
  }

  public final void ih(String paramString)
  {
    this.cIs = paramString;
    closeCursor();
    FZ();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.s
 * JD-Core Version:    0.6.2
 */
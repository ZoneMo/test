package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.base.dv;
import com.tencent.mm.ui.bc;
import java.util.LinkedList;
import java.util.List;

final class t extends bc
{
  private List cKz;
  private String[] gKD;

  public t(Context paramContext, i parami)
  {
    super(paramContext, parami);
  }

  public final void B(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null)
      this.gKD = paramArrayOfString;
    closeCursor();
    FZ();
  }

  public final void FZ()
  {
    setCursor(be.uz().su().a(this.gKD, "@all.chatroom", null, this.cKz));
  }

  protected final void Ga()
  {
    closeCursor();
    FZ();
  }

  public final void aB(List paramList)
  {
    if (paramList == null)
      paramList = new LinkedList();
    this.cKz = paramList;
    ca localca = be.uz().sz().vB("@t.qq.com");
    if (localca != null)
      this.cKz.add(localca.getName());
    ca(null);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    u localu1;
    i locali;
    int i;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903089, null);
      u localu2 = new u((byte)0);
      localu2.cTU = ((MaskLayout)paramView.findViewById(2131361978));
      localu2.cMU = ((TextView)paramView.findViewById(2131361979));
      paramView.setTag(localu2);
      localu1 = localu2;
      locali = (i)getItem(paramInt);
      TextView localTextView1 = localu1.cMU;
      Context localContext = this.context;
      if (w.db(locali.getUsername()))
        break label233;
      i = 2131493120;
      label101: localTextView1.setTextColor(a.j(localContext, i));
      c.a((ImageView)localu1.cTU.getContentView(), locali.getUsername());
      if (locali.rJ() == 0)
        break label251;
      String str = ar.ub().cq(locali.rJ());
      if (str == null)
        break label240;
      Bitmap localBitmap = com.tencent.mm.p.u.eN(str);
      localu1.cTU.a(localBitmap, dv.gCR);
    }
    while (true)
    {
      TextView localTextView2 = localu1.cMU;
      localTextView2.setText(com.tencent.mm.ao.b.e(this.context, locali.rr(), (int)localu1.cMU.getTextSize()));
      return paramView;
      localu1 = (u)paramView.getTag();
      break;
      label233: i = 2131493122;
      break label101;
      label240: localu1.cTU.aHz();
      continue;
      label251: localu1.cTU.aHz();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.t
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.chatting;

import android.app.ProgressDialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.tencent.mm.j.b;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.c;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.x;
import com.tencent.mm.pluginsdk.model.app.z;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.cx;

public final class n
  implements View.OnClickListener, x
{
  private ProgressDialog cIr;
  private ChattingUI gKu;

  public n(ChattingUI paramChattingUI)
  {
    this.gKu = paramChattingUI;
  }

  public final void a(int paramInt1, int paramInt2, z paramz)
  {
    aa.d("MicroMsg.AppSpamClickListener", "appsettings errType = " + paramInt1 + ", errCode = " + paramInt2);
    if ((this.cIr != null) && (this.cIr.isShowing()))
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    ba.PE().b(2, this);
    if ((paramInt1 == 0) && (paramInt2 == 0))
      h.an(this.gKu, this.gKu.getString(2131167272));
    while (cx.a(this.gKu, paramInt1, paramInt2, 4))
      return;
    ChattingUI localChattingUI1 = this.gKu;
    ChattingUI localChattingUI2 = this.gKu;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(localChattingUI1, localChattingUI2.getString(2131167259, arrayOfObject), 0).show();
  }

  public final void onClick(View paramView)
  {
    kk localkk;
    String str1;
    if ((paramView.getTag() != null) && ((paramView.getTag() instanceof kk)))
    {
      localkk = (kk)paramView.getTag();
      str1 = localkk.gQM.appId;
      if (cj.hX(str1))
        aa.e("MicroMsg.AppSpamClickListener", "appId is null or nil");
    }
    else
    {
      return;
    }
    if (l.F(str1, false) == null)
    {
      aa.e("MicroMsg.AppSpamClickListener", "get null appinfo : appid = " + str1);
      return;
    }
    ba.PE().a(2, this);
    int i;
    String str2;
    if (this.gKu.gMn)
    {
      i = 2;
      str2 = this.gKu.aJe();
      if (!w.cp(str2))
        break label218;
    }
    label218: for (String str3 = bv.dy(localkk.cad.getContent()); ; str3 = str2)
    {
      b localb = localkk.gQM;
      h.a(this.gKu, this.gKu.getString(2131166859), this.gKu.getString(2131166858), this.gKu.getString(2131166856), this.gKu.getString(2131166857), new o(this, localb, str3, i), new p(this, localb, str3, i));
      return;
      i = 1;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.n
 * JD-Core Version:    0.6.2
 */
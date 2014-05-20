package com.tencent.mm.ui.tools;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.ad;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.dn;

final class gv
  implements ad
{
  gv(WebViewUI paramWebViewUI)
  {
  }

  public final void iS(int paramInt)
  {
    aa.d("MicroMsg.WebViewUI", "onKeyBoardStateChange, state = " + paramInt);
    if ((paramInt != -3) || (!WebViewUI.a(this.hnv).aNR().avE()) || ((WebViewUI.z(this.hnv) != null) && (WebViewUI.z(this.hnv).isShowing())))
      return;
    View localView = View.inflate(this.hnv.aal(), k.aVk, null);
    ((ImageView)localView.findViewById(i.axY)).setImageResource(h.agk);
    TextView localTextView = (TextView)localView.findViewById(i.axZ);
    localTextView.setTextSize(14.0F);
    localTextView.setText(n.bIb);
    ((ImageButton)localView.findViewById(i.axX)).setOnClickListener(new gw(this));
    WebViewUI.a(this.hnv, dn.b(this.hnv.aal(), localView));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gv
 * JD-Core Version:    0.6.2
 */
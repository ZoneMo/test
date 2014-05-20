package com.tencent.mm.ui.chatting;

import android.content.res.Resources;
import android.os.Vibrator;
import android.widget.Toast;
import com.tencent.mm.n.r;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.sdk.platformtools.bq;

final class cb
  implements az
{
  cb(bv parambv)
  {
  }

  public final boolean ok()
  {
    long l = bv.a(this.gMs).wG();
    aa.d("MicroMsg.ChattingFooterEventImpl", "ms " + l);
    if ((l >= 50000L) && (l <= 60000L))
    {
      if (bv.l(this.gMs) != null)
        break label207;
      bv.m(this.gMs).vibrate(50L);
      int j = (int)((60000L - l) / 1000L);
      bv localbv = this.gMs;
      ChattingUI localChattingUI = bv.f(this.gMs);
      Resources localResources2 = bv.f(this.gMs).getResources();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      bv.a(localbv, Toast.makeText(localChattingUI, localResources2.getQuantityString(2131230724, j, arrayOfObject2), 0));
    }
    while (true)
    {
      bv.l(this.gMs).show();
      if (l < 60000L)
        break;
      aa.v("MicroMsg.ChattingFooterEventImpl", "record stop on countdown");
      bv.n(this.gMs);
      bv.d(this.gMs).Oe();
      bq.q(bv.f(this.gMs), 2131168184);
      return false;
      label207: int i = (int)((60000L - l) / 1000L);
      Toast localToast = bv.l(this.gMs);
      Resources localResources1 = bv.f(this.gMs).getResources();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      localToast.setText(localResources1.getQuantityString(2131230724, i, arrayOfObject1));
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cb
 * JD-Core Version:    0.6.2
 */
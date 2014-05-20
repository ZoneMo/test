package com.tencent.mm.ui.chatting;

import android.app.ProgressDialog;
import android.widget.Toast;
import com.tencent.mm.j.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;

final class ec
  implements m
{
  ec(eb parameb)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.ChattingItemVoiceRemindConfirm", "errType " + paramInt1 + " errCode " + paramInt2 + "  scene " + paramx.getType());
    String str2;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      String str1 = this.gNh.gNg.gNb.getContent();
      str2 = cj.sT(str1);
      if (str2 == null)
        break label307;
    }
    label307: for (b localb = b.bR(str2); ; localb = null)
    {
      if (localb != null)
        s.qr(localb.cgE);
      bv.q(this.gNh.gNg.gNb.Bo());
      Toast.makeText(dw.a(this.gNh.gNg.gNd), dw.a(this.gNh.gNg.gNd).getString(2131167076), 0).show();
      while (true)
      {
        be.uA().b(331, dw.b(this.gNh.gNg.gNd));
        dw.a(this.gNh.gNg.gNd, null);
        if (dw.c(this.gNh.gNg.gNd) != null)
          dw.c(this.gNh.gNg.gNd).dismiss();
        return;
        ChattingUI localChattingUI1 = dw.a(this.gNh.gNg.gNd);
        ChattingUI localChattingUI2 = dw.a(this.gNh.gNg.gNd);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(localChattingUI1, localChattingUI2.getString(2131167078, arrayOfObject), 0).show();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ec
 * JD-Core Version:    0.6.2
 */
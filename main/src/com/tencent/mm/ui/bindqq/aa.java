package com.tencent.mm.ui.bindqq;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aq;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class aa
  implements DialogInterface.OnClickListener
{
  aa(z paramz)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = StartUnbindQQ.c(this.gJH.gJG).getText().toString();
    StartUnbindQQ.c(this.gJH.gJG).setText("");
    StartUnbindQQ.c(this.gJH.gJG).clearFocus();
    this.gJH.gJG.af(StartUnbindQQ.c(this.gJH.gJG));
    if ((str == null) || (str.equals("")))
    {
      h.a(this.gJH.gJG, n.bEf, n.ber, null);
      return;
    }
    aq localaq = new aq(2, str);
    be.uA().d(localaq);
    StartUnbindQQ localStartUnbindQQ1 = this.gJH.gJG;
    StartUnbindQQ localStartUnbindQQ2 = this.gJH.gJG;
    this.gJH.gJG.getString(n.ber);
    StartUnbindQQ.a(localStartUnbindQQ1, h.a(localStartUnbindQQ2, this.gJH.gJG.getString(n.bym), true, null));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.aa
 * JD-Core Version:    0.6.2
 */
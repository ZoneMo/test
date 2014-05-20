package com.tencent.mm.plugin.scanner.ui;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.ar;

final class au
  implements View.OnClickListener
{
  au(at paramat)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.eey.edK == null)
    {
      aa.e("MicroMsg.scanner.ScanModeQRCode", "toWebWxOnclickListener scanUICallback == null");
      return;
    }
    View localView = View.inflate(this.eey.edK.aal(), k.baU, null);
    ar localar = new ar(this.eey.edK.aal(), o.bIF);
    localar.setContentView(localView);
    localar.setOnCancelListener(new av(this));
    ((Button)localView.findViewById(i.aIi)).setOnClickListener(new aw(this, localar));
    localar.setCanceledOnTouchOutside(false);
    localar.show();
    this.eey.edK.bd(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.au
 * JD-Core Version:    0.6.2
 */
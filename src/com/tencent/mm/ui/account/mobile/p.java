package com.tencent.mm.ui.account.mobile;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.account.av;

final class p
  implements View.OnClickListener
{
  p(o paramo, MobileInputUI paramMobileInputUI)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.gvW.gqC.getText().toString().trim();
    this.gvW.gqK = this.gvW.gqD.getText().toString().trim();
    this.gvW.gqL = this.gvW.gqA.getText().toString();
    this.gvW.SM();
    int i = 6;
    if (cj.azT())
      i = 14;
    av.a(this.gvW, i, str, this.gvW.gqK, this.gvW.gqL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.p
 * JD-Core Version:    0.6.2
 */
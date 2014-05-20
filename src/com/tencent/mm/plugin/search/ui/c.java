package com.tencent.mm.plugin.search.ui;

import android.view.View;
import android.widget.ListView;
import com.tencent.mm.plugin.search.model.ad;
import com.tencent.mm.plugin.search.model.at;
import java.util.List;

final class c
  implements ad
{
  c(SearchContactUI paramSearchContactUI)
  {
  }

  public final void a(List paramList1, List paramList2, String[] paramArrayOfString)
  {
    this.eiK.eiD = null;
    this.eiK.eiF = paramList2;
    this.eiK.eiG = paramList1;
    this.eiK.eiH = null;
    SearchContactUI.a(this.eiK).a(this.eiK.eiG, this.eiK.eiF, this.eiK.eiH, paramArrayOfString, true);
    SearchContactUI.b(this.eiK).setVisibility(8);
    SearchContactUI.c(this.eiK).setVisibility(0);
    SearchContactUI.c(this.eiK).setSelection(0);
    this.eiK.eiE = at.a(this.eiK.eho, SearchContactUI.d(this.eiK), this.eiK.mHandler);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.c
 * JD-Core Version:    0.6.2
 */
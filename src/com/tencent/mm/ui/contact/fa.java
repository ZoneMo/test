package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.y;

final class fa
  implements AdapterView.OnItemClickListener
{
  fa(SnsTagContactListUI paramSnsTagContactListUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent1 = new Intent();
    com.tencent.mm.f.a locala = (com.tencent.mm.f.a)SnsTagContactListUI.a(this.gVI).getItem(paramInt);
    y localy = aq.apD();
    if (localy == null)
    {
      this.gVI.finish();
      return;
    }
    Intent localIntent2 = localy.a(localIntent1, locala.getUsername());
    if (localIntent2 == null)
    {
      this.gVI.finish();
      return;
    }
    com.tencent.mm.ak.a.b(this.gVI.aal(), "sns", ".ui.SnsUserUI", localIntent2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fa
 * JD-Core Version:    0.6.2
 */
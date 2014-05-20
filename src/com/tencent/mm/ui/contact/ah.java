package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ak.a;

final class ah
  implements View.OnClickListener
{
  ah(BizContactEntranceView paramBizContactEntranceView)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("intent_service_type", 1);
    a.b(paramView.getContext(), "brandservice", ".ui.BrandServiceIndexUI", localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ah
 * JD-Core Version:    0.6.2
 */
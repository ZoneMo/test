package com.tencent.mm.ui.conversation;

import android.view.View;
import android.widget.ListView;
import com.tencent.mm.ui.base.cy;

final class j
  implements cy
{
  j(BizConversationUI paramBizConversationUI)
  {
  }

  public final int K(View paramView)
  {
    return BizConversationUI.b(this.gXS).getPositionForView(paramView);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.j
 * JD-Core Version:    0.6.2
 */
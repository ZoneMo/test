package com.tencent.mm.ui.conversation;

import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import java.util.HashMap;

final class w
  implements ar
{
  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    String str = (String)paramObject;
    if (s.a(this.gYn));
    while ((str == null) || (str.equals("")) || (s.b(this.gYn) == null) || (!s.b(this.gYn).containsKey(Integer.valueOf(paramInt))))
      return;
    s.b(this.gYn).remove(Integer.valueOf(paramInt));
    s.c(this.gYn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.w
 * JD-Core Version:    0.6.2
 */
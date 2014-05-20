package com.tencent.mm.ui.voicesearch;

import java.util.ArrayList;
import java.util.List;

final class o
  implements Runnable
{
  o(j paramj, List paramList)
  {
  }

  public final void run()
  {
    if (j.a(this.htK) == null)
      j.a(this.htK, new ArrayList());
    j.a(this.htK).clear();
    j.a(this.htK).addAll(this.ekn);
    j.a(this.htK).add("officialaccounts");
    j.a(this.htK).add("helper_entry");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.o
 * JD-Core Version:    0.6.2
 */
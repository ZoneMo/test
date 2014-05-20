package com.tencent.mm.plugin.ext.provider;

import android.database.Cursor;
import com.tencent.mm.pluginsdk.d.a.a;

final class m
  implements Runnable
{
  m(ExtControlProviderSearchContact paramExtControlProviderSearchContact, Cursor paramCursor, a parama)
  {
  }

  public final void run()
  {
    ExtControlProviderSearchContact localExtControlProviderSearchContact = this.dgn;
    ExtControlProviderSearchContact.a(localExtControlProviderSearchContact, ExtControlProviderSearchContact.c(this.dgm));
    this.cOF.countDown();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.m
 * JD-Core Version:    0.6.2
 */
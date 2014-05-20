package com.tencent.mm.ui.applet;

import java.util.LinkedList;

final class g
{
  private int cK = 40;
  private LinkedList cWo = null;

  public g(b paramb)
  {
  }

  final boolean contains(String paramString)
  {
    return this.cWo.contains(paramString);
  }

  final void eQ(String paramString)
  {
    if (this.cWo.contains(paramString));
    do
    {
      return;
      this.cWo.add(paramString);
    }
    while (this.cWo.size() < this.cK);
    this.cWo.removeFirst();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.g
 * JD-Core Version:    0.6.2
 */
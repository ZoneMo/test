package com.tencent.mm.pluginsdk.ui.applet;

final class u
  implements ai
{
  u(s params)
  {
  }

  public final void kl(int paramInt)
  {
    if ((s.a(this.fnX) != null) && (this.fnX.fnN != null))
    {
      if (!this.fnX.fnN.kn(paramInt))
        break label48;
      s.a(this.fnX).je(paramInt);
    }
    label48: 
    do
    {
      do
      {
        return;
        if (!this.fnX.fnN.ko(paramInt))
          break;
      }
      while (!this.fnX.fnN.fog);
      this.fnX.fnN.km(0);
      return;
      if ((this.fnX.fnN.asa()) && (this.fnX.fnN.kp(paramInt)))
      {
        s.a(this.fnX).jd(paramInt);
        return;
      }
      if ((this.fnX.fnN.asa()) && (!this.fnX.fnN.kp(paramInt)))
      {
        s.a(this.fnX).aiC();
        return;
      }
    }
    while ((this.fnX.fnN.asa()) || (!this.fnX.fnN.kp(paramInt)));
    s.a(this.fnX).jf(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.u
 * JD-Core Version:    0.6.2
 */
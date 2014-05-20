package com.tencent.mm.pluginsdk.ui.chat;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;
import com.tencent.mm.an.a;
import com.tencent.mm.h;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;

final class q
  implements View.OnTouchListener
{
  q(ChatFooter paramChatFooter)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramView != ChatFooter.q(this.fqG));
    do
    {
      do
      {
        do
        {
          return false;
          aa.v("RcdBtnEvent", "event.getAction():" + paramMotionEvent.getAction());
          switch (paramMotionEvent.getAction())
          {
          default:
            return false;
          case 0:
            Object[] arrayOfObject4 = new Object[1];
            arrayOfObject4[0] = Integer.valueOf(ChatFooter.asW());
            aa.d("RcdBtnEvent", "on MotionEvent.ACTION_DOWN:[%d]", arrayOfObject4);
          case 2:
          case 1:
          }
        }
        while ((ChatFooter.r(this.fqG)) || (ChatFooter.s(this.fqG)));
        ChatFooter.c(this.fqG, true);
        ChatFooter.q(this.fqG).setBackgroundDrawable(a.k(this.fqG.getContext(), h.ajO));
        ChatFooter.q(this.fqG).setText(n.bgA);
        ChatFooter.f(this.fqG).VP();
        return false;
        if ((ChatFooter.t(this.fqG) == null) || (ChatFooter.u(this.fqG) == null))
        {
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = ChatFooter.t(this.fqG);
          arrayOfObject3[1] = ChatFooter.u(this.fqG);
          aa.b("MicroMsg.ChatFooter", "[arthurdan.initRcdBtn] Notice!!! rcdAnimArea is %s, rcdCancelArea is %s", arrayOfObject3);
        }
        if ((paramMotionEvent.getX() <= 0.0F) || (paramMotionEvent.getY() <= -ChatFooter.v(this.fqG) / 2) || (paramMotionEvent.getX() >= ChatFooter.q(this.fqG).getWidth()))
          break;
        if (ChatFooter.t(this.fqG) != null)
          ChatFooter.t(this.fqG).setVisibility(0);
      }
      while (ChatFooter.u(this.fqG) == null);
      ChatFooter.q(this.fqG).setText(n.bgA);
      ChatFooter.u(this.fqG).setVisibility(8);
      return false;
      aa.v("MicroMsg.ChatFooter", "show cancel Tips");
      if (ChatFooter.t(this.fqG) != null)
        ChatFooter.t(this.fqG).setVisibility(8);
    }
    while (ChatFooter.u(this.fqG) == null);
    ChatFooter.q(this.fqG).setText(n.bgy);
    ChatFooter.u(this.fqG).setVisibility(0);
    return false;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(ChatFooter.asW());
    aa.d("RcdBtnEvent", "enter on MotionEvent.ACTION_UP:[%d]", arrayOfObject1);
    ChatFooter.c(this.fqG, false);
    ChatFooter.q(this.fqG).setBackgroundDrawable(a.k(this.fqG.getContext(), h.ajN));
    ChatFooter.q(this.fqG).setText(n.bgz);
    if ((ChatFooter.u(this.fqG) != null) && (ChatFooter.u(this.fqG).getVisibility() == 0))
      ChatFooter.f(this.fqG).VO();
    while (true)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(ChatFooter.asX());
      aa.d("RcdBtnEvent", "outer on MotionEvent.ACTION_UP:[%d]", arrayOfObject2);
      return false;
      ChatFooter.f(this.fqG).VM();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.q
 * JD-Core Version:    0.6.2
 */
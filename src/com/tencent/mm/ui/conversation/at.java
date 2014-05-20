package com.tencent.mm.ui.conversation;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.voicereminder.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;

final class at
  implements AdapterView.OnItemClickListener
{
  at(MainUI paramMainUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < MainUI.m(this.gZI).getHeaderViewsCount())
      return;
    int i = paramInt - MainUI.m(this.gZI).getHeaderViewsCount();
    n localn = (n)MainUI.b(this.gZI).getItem(i);
    if (localn == null)
    {
      aa.e("MicroMsg.MainUI", "null user at position = " + i);
      return;
    }
    if (w.cA(localn.getUsername()))
    {
      if (v.tv())
      {
        a.l(this.gZI.aal(), "tmessage", ".ui.TConversationUI");
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cC(localn.getUsername()))
    {
      if (v.tr())
      {
        a.l(this.gZI.aal(), "qmessage", ".ui.QConversationUI");
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cB(localn.getUsername()))
    {
      if (v.tu())
      {
        a.l(this.gZI.aal(), "bottle", ".ui.BottleConversationUI");
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cG(localn.getUsername()))
    {
      MMAppMgr.aT(localn.getUsername());
      if (v.ty())
      {
        a.l(this.gZI.aal(), "qqsync", ".ui.QQSyncUI");
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cy(localn.getUsername()))
    {
      if (cj.c((Integer)be.uz().sr().get(17)) == 1);
      for (int j = 1; j != 0; j = 0)
      {
        MainUI.a(this.gZI, ChattingUI.class, new Intent().putExtra("Chat_User", localn.getUsername()));
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cL(localn.getUsername()))
    {
      if (v.tA())
      {
        Intent localIntent3 = new Intent();
        localIntent3.addFlags(67108864);
        localIntent3.putExtra("type", 20);
        a.b(this.gZI.aal(), "readerapp", ".ui.ReaderAppUI", localIntent3);
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cS(localn.getUsername()))
    {
      if (v.tB())
      {
        Intent localIntent2 = new Intent();
        localIntent2.addFlags(67108864);
        localIntent2.putExtra("type", 11);
        a.b(this.gZI.aal(), "readerapp", ".ui.ReaderAppUI", localIntent2);
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cD(localn.getUsername()))
    {
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cE(localn.getUsername()))
    {
      if (v.tD())
      {
        Intent localIntent1 = new Intent().addFlags(67108864);
        a.b(this.gZI.aal(), "masssend", ".ui.MassSendHistoryUI", localIntent1);
        return;
      }
      this.gZI.startActivity(new Intent(this.gZI.aal(), ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cR(localn.getUsername()))
    {
      ((f)be.uh().dN(f.class.getName())).pk(localn.getUsername());
      MainUI.b(this.gZI, ChattingUI.class, new Intent().putExtra("Chat_User", localn.getUsername()));
      return;
    }
    if (w.cT(localn.getUsername()))
    {
      this.gZI.startActivity(new Intent(this.gZI.aal(), BizConversationUI.class));
      return;
    }
    m.dZN.hx(9);
    MainUI.c(this.gZI, ChattingUI.class, new Intent().putExtra("Chat_User", localn.getUsername()));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.at
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.voicesearch;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;

final class i
  implements AdapterView.OnItemClickListener
{
  i(SearchConversationResultUI paramSearchConversationResultUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < SearchConversationResultUI.a(this.htD).getHeaderViewsCount())
      return;
    int i = paramInt - SearchConversationResultUI.a(this.htD).getHeaderViewsCount();
    n localn = (n)SearchConversationResultUI.b(this.htD).getItem(i);
    if (localn == null)
    {
      aa.e("MicroMsg.VoiceSearchResultUI", "null user at position = " + i);
      return;
    }
    aa.d("MicroMsg.VoiceSearchResultUI", "username " + localn.getUsername());
    if (w.cA(localn.getUsername()))
    {
      if (v.tw())
      {
        Intent localIntent5 = new Intent().putExtra("finish_direct", true);
        com.tencent.mm.ak.a.b(this.htD.aal(), "tmessage", ".ui.TConversationUI", localIntent5);
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cC(localn.getUsername()))
    {
      if (v.tt())
      {
        Intent localIntent4 = new Intent().putExtra("finish_direct", true);
        com.tencent.mm.ak.a.b(this.htD.aal(), "qmessage", ".ui.QConversationUI", localIntent4);
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cB(localn.getUsername()))
    {
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cG(localn.getUsername()))
    {
      MMAppMgr.aT(localn.getUsername());
      if (v.ty())
      {
        com.tencent.mm.ak.a.b(this.htD, "qqsync", ".ui.QQSyncUI", new Intent().putExtra("finish_direct", true));
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cy(localn.getUsername()))
    {
      if (v.tF())
      {
        SearchConversationResultUI.a(this.htD, ChattingUI.class, new Intent().putExtra("Chat_User", localn.getUsername()).putExtra("finish_direct", true));
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cL(localn.getUsername()))
    {
      if (v.tA())
      {
        Intent localIntent3 = new Intent();
        localIntent3.putExtra("type", 20);
        com.tencent.mm.ak.a.b(this.htD, "readerapp", ".ui.ReaderAppUI", localIntent3);
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cS(localn.getUsername()))
    {
      if (v.tB())
      {
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("type", 11);
        com.tencent.mm.ak.a.b(this.htD, "readerapp", ".ui.ReaderAppUI", localIntent2);
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cD(localn.getUsername()))
    {
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cE(localn.getUsername()))
    {
      if (v.tD())
      {
        Intent localIntent1 = new Intent().putExtra("finish_direct", true);
        com.tencent.mm.ak.a.b(this.htD, "masssend", ".ui.MassSendHistoryUI", localIntent1);
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if (w.cK(localn.getUsername()))
    {
      if (v.tx())
      {
        SearchConversationResultUI.b(this.htD, ChattingUI.class, new Intent().putExtra("Chat_User", localn.getUsername()).putExtra("finish_direct", true));
        return;
      }
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", localn.getUsername()));
      return;
    }
    if ((w.cI(SearchConversationResultUI.c(this.htD))) || (w.cJ(SearchConversationResultUI.c(this.htD))) || (w.cF(SearchConversationResultUI.c(this.htD))) || (w.cM(SearchConversationResultUI.c(this.htD))) || (w.cN(SearchConversationResultUI.c(this.htD))) || (w.cz(SearchConversationResultUI.c(this.htD))) || (w.cV(SearchConversationResultUI.c(this.htD))))
    {
      this.htD.startActivity(new Intent(this.htD, ContactInfoUI.class).putExtra("Contact_User", SearchConversationResultUI.c(this.htD)));
      return;
    }
    SearchConversationResultUI.c(this.htD, ChattingUI.class, new Intent().putExtra("Chat_User", localn.getUsername()).putExtra("finish_direct", true));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.i
 * JD-Core Version:    0.6.2
 */
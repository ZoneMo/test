package com.tencent.mm.ui.voicesearch;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.contact.bh;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class VoiceSearchResultUI extends MMActivity
{
  private int bLY = 1;
  private TextView cYb;
  private int cvK = 2;
  private ListView htA;
  private String htC = null;
  private j htN;
  private String[] htO;
  private int htP = -1;
  private boolean htQ = false;

  private static String[] C(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      return paramArrayOfString;
    aa.d("MicroMsg.VoiceSearchResultUI", "oldlist.length " + paramArrayOfString.length);
    HashMap localHashMap = new HashMap();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str1 = paramArrayOfString[j];
      String str2 = com.tencent.mm.model.w.cu(str1);
      aa.d("MicroMsg.VoiceSearchResultUI", "displayname " + str2);
      if ((!localHashMap.containsValue(str2)) || (!com.tencent.mm.model.w.cp(str1)))
      {
        aa.d("MicroMsg.VoiceSearchResultUI", "username " + str1);
        localHashMap.put(str2, str1);
      }
    }
    return (String[])localHashMap.values().toArray(new String[localHashMap.values().size()]);
  }

  private void D(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramArrayOfString != null) && (this.htN != null))
    {
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String str = paramArrayOfString[j];
        if (this.htN.ya(str))
          localArrayList.add(str);
      }
    }
    if (localArrayList.size() == 0)
    {
      this.cYb.setVisibility(0);
      if (this.htC != null)
        this.cYb.setText(this.htC);
    }
    while (true)
    {
      if (this.htN != null)
        this.htN.aG(localArrayList);
      return;
      this.cYb.setText(getString(2131166183));
      continue;
      this.cYb.setVisibility(8);
    }
  }

  private static boolean yb(String paramString)
  {
    Cursor[] arrayOfCursor = new Cursor[2];
    arrayOfCursor[0] = be.uz().sx().a(com.tencent.mm.model.w.chM, null, paramString);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    try
    {
      while (arrayOfCursor[0].moveToNext())
      {
        String str = arrayOfCursor[0].getString(arrayOfCursor[0].getColumnIndex("username"));
        localArrayList1.add(str);
        if (!str.endsWith("@chatroom"))
          localArrayList2.add(str);
        aa.d("MicroMsg.VoiceSearchResultUI", "block user " + str);
      }
    }
    catch (Exception localException)
    {
      arrayOfCursor[1] = be.uz().su().b(paramString, "@micromsg.with.all.biz.qq.com", localArrayList1, localArrayList2);
      int i = arrayOfCursor[1].getCount();
      int j = arrayOfCursor[0].getCount();
      arrayOfCursor[0].close();
      arrayOfCursor[1].close();
      aa.d("MicroMsg.VoiceSearchResultUI", "contactCount " + i + " conversationCount " + j);
      if (i + j <= 1)
        return true;
    }
    return false;
  }

  protected final void FR()
  {
    this.htA = ((ListView)findViewById(2131364089));
    this.cYb = ((TextView)findViewById(2131361904));
    this.htO = getIntent().getStringArrayExtra("VoiceSearchResultUI_Resultlist");
    this.htC = getIntent().getStringExtra("VoiceSearchResultUI_Error");
    this.htP = getIntent().getIntExtra("VoiceSearchResultUI_VoiceId", -1);
    this.bLY = getIntent().getIntExtra("VoiceSearchResultUI_ShowType", 1);
    int i;
    LinkedList localLinkedList;
    if (this.bLY == 1)
    {
      i = 2;
      this.cvK = i;
      this.htN = new j(getApplicationContext(), this.bLY);
      this.htN.eB(false);
      localLinkedList = new LinkedList();
      switch (this.bLY)
      {
      case 1:
      default:
        label156: if (this.htN != null)
          this.htN.aB(localLinkedList);
        this.htA.setAdapter(this.htN);
        this.cYb.setVisibility(8);
        aa.d("MicroMsg.VoiceSearchResultUI", "voiceId  " + this.htP);
        if (this.bLY == 2)
        {
          vT("");
          this.htO = C(this.htO);
        }
        break;
      case 2:
      }
    }
    while (true)
    {
      vT(getString(2131166223));
      a(new w(this));
      this.htA.setOnItemClickListener(new x(this));
      D(this.htO);
      return;
      i = 1;
      break;
      localLinkedList.add("lbsapp");
      localLinkedList.add("shakeapp");
      localLinkedList.add("qqfriend");
      localLinkedList.add("facebookapp");
      localLinkedList.add("feedsapp");
      localLinkedList.add("fmessage");
      localLinkedList.add("voipapp");
      localLinkedList.add("voicevoipapp");
      localLinkedList.add("voiceinputapp");
      localLinkedList.add("linkedinplugin");
      int j = v.tq();
      if ((j & 0x1) != 0)
        localLinkedList.add("qqmail");
      if ((!com.tencent.mm.model.w.tR()) || ((j & 0x2) != 0))
        localLinkedList.add("tmessage");
      if ((j & 0x20) != 0)
        localLinkedList.add("qmessage");
      if ((j & 0x80) != 0)
        localLinkedList.add("qqsync");
      if ((j & 0x10) != 0)
        localLinkedList.add("medianote");
      if ((0x80000 & j) != 0)
        localLinkedList.add("newsapp");
      if (((0x40000 & j) != 0) || (!com.tencent.mm.model.w.tQ()))
        localLinkedList.add("blogapp");
      if ((0x10000 & j) != 0)
        localLinkedList.add("masssendapp");
      if ((j & 0x2000000) == 0)
        break label156;
      localLinkedList.add("voiceinputapp");
      break label156;
      vT(getString(2131166223));
    }
  }

  public final void bl(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() <= 0));
    do
    {
      Intent localIntent2;
      do
      {
        return;
        aa.d("MicroMsg.VoiceSearchResultUI", "dealSelectContact " + paramString1);
        if (this.bLY == 3)
        {
          Intent localIntent1 = new Intent();
          localIntent1.putExtra("Select_Conv_User", paramString1);
          setResult(-1, localIntent1);
          finish();
          return;
        }
        if ((this.bLY != 1) && (!com.tencent.mm.model.w.dc(paramString1)) && (!com.tencent.mm.model.w.cw(paramString1)) && (!com.tencent.mm.model.w.cp(paramString1)) && (!com.tencent.mm.model.w.cr(paramString1)) && (!yb(paramString2)))
          break label920;
        if (this.bLY != 1)
          break;
        localIntent2 = new Intent();
        localIntent2.setClass(this, ContactInfoUI.class);
        localIntent2.putExtra("Contact_User", paramString1);
        if (com.tencent.mm.model.w.cr(paramString1))
          localIntent2.putExtra("Is_group_card", true);
      }
      while ((paramString1 == null) || (paramString1.length() <= 0));
      bh.b(localIntent2, paramString1);
      startActivity(localIntent2);
      return;
    }
    while (this.bLY != 2);
    if (cj.hX(paramString1))
    {
      aa.e("MicroMsg.VoiceSearchResultUI", "username is null " + paramString1);
      return;
    }
    if (com.tencent.mm.model.w.cA(paramString1))
    {
      if (v.tw())
      {
        Intent localIntent6 = new Intent().putExtra("finish_direct", true);
        a.b(aal(), "tmessage", ".ui.TConversationUI", localIntent6);
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cC(paramString1))
    {
      if (v.tt())
      {
        Intent localIntent5 = new Intent().putExtra("finish_direct", true);
        a.b(aal(), "qmessage", ".ui.QConversationUI", localIntent5);
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cB(paramString1))
    {
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cG(paramString1))
    {
      MMAppMgr.aT(paramString1);
      if (v.ty())
      {
        a.b(this, "qqsync", ".ui.QQSyncUI", new Intent().putExtra("finish_direct", true));
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cy(paramString1))
    {
      if (v.tF())
      {
        a(ChattingUI.class, new Intent().putExtra("Chat_User", paramString1).putExtra("finish_direct", true));
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cL(paramString1))
    {
      if (v.tA())
      {
        Intent localIntent4 = new Intent();
        localIntent4.putExtra("type", 20);
        a.b(this, "readerapp", ".ui.ReaderAppUI", localIntent4);
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cS(paramString1))
    {
      if (v.tB())
      {
        Intent localIntent3 = new Intent();
        localIntent3.putExtra("type", 11);
        a.b(this, "readerapp", ".ui.ReaderAppUI", localIntent3);
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cD(paramString1))
    {
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cE(paramString1))
    {
      if (v.tD())
      {
        a.b(this, "masssend", ".ui.MassSendHistoryUI", new Intent().putExtra("finish_direct", true));
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if (com.tencent.mm.model.w.cK(paramString1))
    {
      if (v.tx())
      {
        a(ChattingUI.class, new Intent().putExtra("Chat_User", paramString1).putExtra("finish_direct", true));
        return;
      }
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    if ((com.tencent.mm.model.w.cI(paramString1)) || (com.tencent.mm.model.w.cJ(paramString1)) || (com.tencent.mm.model.w.cF(paramString1)) || (com.tencent.mm.model.w.cM(paramString1)) || (com.tencent.mm.model.w.cN(paramString1)) || (com.tencent.mm.model.w.cz(paramString1)) || (com.tencent.mm.model.w.cV(paramString1)))
    {
      startActivity(new Intent(this, ContactInfoUI.class).putExtra("Contact_User", paramString1));
      return;
    }
    a(ChattingUI.class, new Intent().putExtra("Chat_User", paramString1).putExtra("finish_direct", true));
    return;
    label920: Intent localIntent7 = new Intent(this, SearchConversationResultUI.class);
    localIntent7.putExtra("SearchConversationResult_User", paramString2);
    startActivity(localIntent7);
  }

  protected final int getLayoutId()
  {
    return 2130903823;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    this.htQ = false;
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.htN.closeCursor();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    m localm;
    StringBuilder localStringBuilder;
    if ((4 == paramInt) && (!this.htQ))
    {
      localm = m.dZN;
      localStringBuilder = new StringBuilder().append(this.cvK).append(",").append(this.htP).append(",");
      if (this.htO != null)
        break label91;
    }
    label91: for (int i = 0; ; i = this.htO.length)
    {
      localm.j(10452, i + ",0");
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
  }

  public void onPause()
  {
    super.onPause();
    this.htQ = true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.VoiceSearchResultUI
 * JD-Core Version:    0.6.2
 */
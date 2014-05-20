package com.tencent.mm.ui.transmit;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.r;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.base.stub.o;
import com.tencent.mm.pluginsdk.model.app.ReportUtil;
import com.tencent.mm.pluginsdk.model.app.ReportUtil.ReportArgs;
import com.tencent.mm.pluginsdk.ui.applet.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.contact.SendContactCardUI;
import com.tencent.mm.ui.tools.eo;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public class SelectConversationUI extends MMActivity
{
  private eo diw;
  private ListView gLH;
  private s gLI;
  private int gLJ = 2;
  private boolean gUV = false;
  private String gUY;
  private boolean gVi = false;
  private ReportUtil.ReportArgs hrP;
  private boolean hrQ;

  private void a(Intent paramIntent1, Intent paramIntent2)
  {
    aa.d("MicroMsg.SelectConversationUI", "has next step, jump now, intent=" + paramIntent2);
    paramIntent2.putExtras(paramIntent1.getExtras());
    startActivityForResult(paramIntent2, 2);
  }

  private void bf(String paramString1, String paramString2)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramString2);
    if (localLinkedList.size() > 0)
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this, SendContactCardUI.class);
      localIntent.putExtra("be_send_card_name", paramString1);
      localIntent.putExtra("received_card_name", au.a(localLinkedList, ","));
      localIntent.putExtra("Is_Chatroom", false);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      finish();
    }
  }

  private void bg(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, SendContactCardUI.class);
    if (paramString1 != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("cardNameToSend is null", bool);
      localIntent.putExtra("be_send_card_name", paramString1);
      localIntent.putExtra("received_card_name", paramString2);
      localIntent.putExtra("Is_Chatroom", true);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      finish();
      return;
    }
  }

  private void c(Intent paramIntent, String paramString)
  {
    if (au.hX(paramString))
    {
      aa.v("MicroMsg.SelectConversationUI", "avatarUseName is null or nil show dialog fail ");
      return;
    }
    boolean bool = com.tencent.mm.model.w.cp(paramString);
    String str = null;
    if (bool)
      str = "(" + r.ci(paramString) + ")";
    i.a(aal(), paramString, getString(2131165629), paramString, str, getString(2131167684), new z(this, paramIntent));
  }

  private void xX(String paramString)
  {
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("Select_Conv_User", paramString);
    Intent localIntent2 = (Intent)getIntent().getParcelableExtra("Select_Conv_NextStep");
    if (localIntent2 != null)
    {
      a(localIntent1, localIntent2);
      return;
    }
    if (this.hrQ)
    {
      c(localIntent1, paramString);
      return;
    }
    if (this.gUV)
    {
      if (paramString.endsWith("@chatroom"))
      {
        bg(this.gUY, paramString);
        return;
      }
      bf(this.gUY, paramString);
      return;
    }
    if (this.gVi)
    {
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("enter_room_username", paramString);
      a.b(this, "talkroom", ".ui.TalkRoomUI", localIntent3);
      finish();
      return;
    }
    setResult(-1, localIntent1);
    finish();
  }

  protected final void FR()
  {
    this.gLH = ((ListView)findViewById(2131363625));
    this.diw = new eo();
    this.diw.a(new v(this));
    a(true, this.diw);
    View localView = View.inflate(this, 2130903670, null);
    if (this.gUV)
      ((TextView)localView.findViewById(2131363291)).setText(2131165624);
    this.gLH.addHeaderView(localView);
    this.gLI = new s(this, (byte)0);
    LinkedList localLinkedList = new LinkedList();
    if ((0x2 & this.gLJ) != 0)
    {
      String[] arrayOfString = com.tencent.mm.model.w.chR;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localLinkedList.add(arrayOfString[j]);
      if ((0x8 & this.gLJ) != 0)
        localLinkedList.remove("medianote");
    }
    localLinkedList.add("weixin");
    localLinkedList.add("officialaccounts");
    localLinkedList.add("newsapp");
    s locals = this.gLI;
    if ((0x1 & this.gLJ) != 0);
    for (boolean bool = true; ; bool = false)
    {
      locals.e(localLinkedList, bool);
      this.gLH.setAdapter(this.gLI);
      this.gLH.setOnItemClickListener(new w(this));
      mn(2131165623);
      a(new x(this));
      this.hrP = ((ReportUtil.ReportArgs)getIntent().getParcelableExtra("Select_Report_Args"));
      String str1 = getIntent().getStringExtra("Select_App_Id");
      String str2 = getIntent().getStringExtra("Select_Open_Id");
      aa.d("MicroMsg.SelectConversationUI", "initView, appId = " + str1 + ", openId = " + str2);
      if ((!au.hX(str1)) && (!au.hX(str2)))
        new o(this, str1, str2, new y(this)).IB();
      return;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903669;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    aa.e("MicroMsg.SelectConversationUI", "onActivityResult, requestCode = " + paramInt1 + ", resultCode = " + paramInt2 + ", data = " + paramIntent);
    if (paramIntent != null)
      aa.e("MicroMsg.SelectConversationUI", "onActivityResult, data.toString() = " + paramIntent.toString());
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1)
      if (paramInt2 == -1)
      {
        aa.e("MicroMsg.SelectConversationUI", "getIntent = " + getIntent());
        Intent localIntent2 = (Intent)getIntent().getParcelableExtra("Select_Conv_NextStep");
        if (localIntent2 == null)
          break label140;
        a(paramIntent, localIntent2);
      }
    label140: 
    do
    {
      do
      {
        return;
        if (this.hrQ)
        {
          c(paramIntent, paramIntent.getStringExtra("Select_Conv_User"));
          return;
        }
        setResult(-1, paramIntent);
        finish();
        return;
        if (paramInt1 != 2)
          break;
        switch (paramInt2)
        {
        default:
          return;
        case -1:
          finish();
        case 0:
        }
      }
      while ((paramIntent == null) || (!paramIntent.getBooleanExtra("Select_stay_in_wx", false)));
      Intent localIntent1 = new Intent(this, TaskRedirectUI.class);
      localIntent1.addFlags(268435456);
      startActivity(localIntent1);
      return;
    }
    while (paramIntent == null);
    this.hrP = ((ReportUtil.ReportArgs)paramIntent.getParcelableExtra("Select_Report_Args"));
    return;
    if (paramInt1 == 3)
    {
      switch (paramInt2)
      {
      default:
        return;
      case -1:
      }
      String str;
      if (paramIntent != null)
      {
        str = paramIntent.getStringExtra("Select_Conv_User");
        if (!cj.hX(str))
        {
          if (!str.endsWith("@chatroom"))
            break label339;
          bg(this.gUY, str);
        }
      }
      while (true)
      {
        finish();
        return;
        label339: bf(this.gUY, str);
      }
    }
    if ((paramInt1 == 4) && (paramInt2 == -1))
      xX(paramIntent.getStringExtra("Select_Conv_User"));
    aa.e("MicroMsg.SelectConversationUI", "onActivityResult, unknown requestCode = " + paramInt1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.hrQ = getIntent().getBooleanExtra("select_is_ret", false);
    this.gUV = getIntent().getBooleanExtra("Select_Send_Card", false);
    if (this.gUV)
      this.gUY = getIntent().getStringExtra("Select_Talker_Name");
    this.gVi = getIntent().getBooleanExtra("To_Talk_Room", false);
    this.gLJ = getIntent().getIntExtra("Select_Conv_Type", 2);
    FR();
  }

  protected void onDestroy()
  {
    this.gLI.closeCursor();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      SM();
      if (this.hrP != null)
        ReportUtil.a(this, this.hrP);
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    if (this.diw != null)
      this.diw.aNE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.SelectConversationUI
 * JD-Core Version:    0.6.2
 */
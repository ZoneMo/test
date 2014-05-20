package com.tencent.mm.ui.friend;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.ah.a;
import com.tencent.mm.ah.f;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ao;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.contact.bh;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import junit.framework.Assert;

public final class e
  implements AdapterView.OnItemClickListener
{
  private Context context;
  private m haK;

  public e(Context paramContext, m paramm)
  {
    this.context = paramContext;
    this.haK = paramm;
  }

  public static void ar(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      aa.e("MicroMsg.FConversationOnItemClickListener", "dealOnClick fail, talker is null");
    com.tencent.mm.ah.e locale;
    ao localao;
    do
    {
      String str1;
      do
      {
        al localal;
        do
        {
          return;
          aa.d("MicroMsg.FConversationOnItemClickListener", "dealOnClick, talker = " + paramString);
          com.tencent.mm.ah.k.Dy().gA(paramString);
          locale = com.tencent.mm.ah.k.Dx().gI(paramString);
          if (locale == null)
          {
            aa.e("MicroMsg.FConversationOnItemClickListener", "onItemClick, lastRecvFmsg is null, talker = " + paramString);
            return;
          }
          if (locale.field_type != 0)
            break;
          localal = be.uz().sw().vj(locale.field_msgContent);
        }
        while ((localal == null) || (localal.aCu().length() <= 0));
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("Contact_ShowFMessageList", true);
        localBundle.putInt("Contact_Source_FMessage", localal.Gf());
        localBundle.putBoolean("Contact_AlwaysShowRemarkBtn", true);
        localBundle.putBoolean("Contact_AlwaysShowSnsPreBtn", true);
        com.tencent.mm.storage.i locali2 = be.uz().su().tO(localal.aCu());
        if ((locali2 != null) && (locali2.rj() > 0) && (locali2.rb()))
        {
          bh.a(paramContext, locali2, localal, true, true, localBundle, "");
          return;
        }
        if (localal.aCx() > 0L)
        {
          if ((au.hX(localal.Ai())) && (au.hX(localal.Ah())) && (!au.hX(localal.kn())))
            localBundle.putString("Contact_QQNick", localal.kn());
          bh.a(paramContext, localal, true, true, localBundle);
          return;
        }
        if ((!au.hX(localal.aCw())) || (!au.hX(localal.aCz())))
        {
          h localh = ax.Al().fs(localal.aCw());
          if ((localh == null) || (localh.yK() == null) || (localh.yK().length() <= 0))
          {
            localh = ax.Al().fs(localal.aCz());
            if ((localh == null) || (localh.yK() == null) || (localh.yK().length() <= 0))
            {
              if ((locali2 != null) && (locali2.rj() > 0))
                bh.a(paramContext, locali2, localal, true, true, localBundle, "");
              while (true)
              {
                aa.e("MicroMsg.FConversationOnItemClickListener", "error : this is not the mobile contact, MD5 = " + localal.aCw() + " fullMD5:" + localal.aCz());
                return;
                bh.a(paramContext, localal, true, true, localBundle);
              }
            }
          }
          if ((localh.getUsername() == null) || (localh.getUsername().length() <= 0))
          {
            localh.setUsername(localal.aCu());
            localh.cL(128);
            if (ax.Al().a(localh.yK(), localh) == -1)
            {
              aa.e("MicroMsg.FConversationOnItemClickListener", "update mobile contact username failed");
              return;
            }
          }
          bh.a(paramContext, localal, true, true, localBundle);
          return;
        }
        bh.a(paramContext, localal, true, true, localBundle);
        return;
        str1 = locale.field_msgContent;
        aa.w("MicroMsg.FConversationOnItemClickListener", "dealClickVerifyMsgEvent : " + str1);
      }
      while ((str1 == null) || (str1.length() <= 0));
      localao = be.uz().sw().vi(str1);
    }
    while (localao == null);
    boolean bool;
    Intent localIntent;
    if (localao.aCu().length() > 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      com.tencent.mm.storage.i locali1 = be.uz().su().tO(localao.aCu());
      localIntent = new Intent(paramContext, ContactInfoUI.class);
      localIntent.putExtra("Contact_ShowUserName", false);
      localIntent.putExtra("Contact_ShowFMessageList", true);
      localIntent.putExtra("Contact_Scene", localao.Gf());
      localIntent.putExtra("Verify_ticket", localao.aCK());
      localIntent.putExtra("Contact_Source_FMessage", localao.Gf());
      localIntent.putExtra("Contact_AlwaysShowRemarkBtn", true);
      localIntent.putExtra("Contact_AlwaysShowSnsPreBtn", true);
      if ((locali1 == null) || (locali1.rj() <= 0) || (!locali1.rb()))
        break label1003;
      localIntent.putExtra("Contact_User", locali1.getUsername());
      bh.b(localIntent, locali1.getUsername());
      label771: str2 = localao.getContent();
      if (au.hW(str2).length() <= 0)
        switch (localao.Gf())
        {
        case 19:
        case 20:
        case 21:
        default:
        case 18:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        }
    }
    for (String str2 = paramContext.getString(2131165746); ; str2 = paramContext.getString(2131167817))
    {
      localIntent.putExtra("Contact_Content", str2);
      localIntent.putExtra("Contact_verify_Scene", localao.Gf());
      localIntent.putExtra("Contact_Uin", localao.aCx());
      localIntent.putExtra("Contact_QQNick", localao.Ah());
      localIntent.putExtra("Contact_Mobile_MD5", localao.aCw());
      localIntent.putExtra("User_From_Fmessage", true);
      localIntent.putExtra("Contact_from_msgType", 37);
      localIntent.putExtra("Contact_KSnsIFlag", 0);
      localIntent.putExtra("Contact_KSnsBgUrl", localao.aCM());
      localIntent.putExtra("verify_gmail", localao.aCB());
      paramContext.startActivity(localIntent);
      return;
      bool = false;
      break;
      label1003: if ((locale.field_type == 1) || (locale.field_type == 2))
        localIntent.putExtra("User_Verify", true);
      localIntent.putExtra("Contact_User", localao.aCu());
      localIntent.putExtra("Contact_Alias", localao.rp());
      localIntent.putExtra("Contact_Nick", localao.kn());
      localIntent.putExtra("Contact_QuanPin", localao.ro());
      localIntent.putExtra("Contact_PyInitial", localao.rn());
      localIntent.putExtra("Contact_Sex", localao.rk());
      localIntent.putExtra("Contact_Signature", localao.rB());
      localIntent.putExtra("Contact_FMessageCard", true);
      localIntent.putExtra("Contact_City", localao.rD());
      localIntent.putExtra("Contact_Province", localao.rC());
      localIntent.putExtra("Contact_Mobile_MD5", localao.aCw());
      localIntent.putExtra("Contact_full_Mobile_MD5", localao.aCz());
      localIntent.putExtra("Contact_KSnsBgUrl", localao.aCM());
      break label771;
    }
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a locala = (a)this.haK.getItem(paramInt);
    if (locala == null)
    {
      aa.e("MicroMsg.FConversationOnItemClickListener", "onItemClick, item is null, pos = " + paramInt);
      return;
    }
    ar(this.context, locala.field_talker);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.e
 * JD-Core Version:    0.6.2
 */
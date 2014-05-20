package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.mm.modelfriend.av;
import com.tencent.mm.modelfriend.aw;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.al;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;

public final class bh
{
  public static void a(Context paramContext, al paramal)
  {
    a(paramContext, paramal, false, false, null);
  }

  public static void a(Context paramContext, al paramal, boolean paramBoolean1, boolean paramBoolean2, Bundle paramBundle)
  {
    if ((paramContext == null) || (paramal == null))
      return;
    com.tencent.mm.storage.i locali = new com.tencent.mm.storage.i();
    locali.setUsername(paramal.aCu());
    locali.bt(paramal.getDisplayName());
    locali.bv(paramal.rn());
    locali.bw(paramal.ro());
    a(paramContext, locali, paramal, paramBoolean1, paramBoolean2, paramBundle, paramal.aCB());
  }

  public static void a(Context paramContext, com.tencent.mm.storage.i parami, al paramal)
  {
    a(paramContext, parami, paramal, false, false, null, paramal.aCB());
  }

  public static void a(Context paramContext, com.tencent.mm.storage.i parami, al paramal, boolean paramBoolean1, boolean paramBoolean2, Bundle paramBundle, String paramString)
  {
    if ((parami == null) || (paramal == null));
    while ((parami.getUsername() == null) || (parami.getUsername().length() <= 0))
      return;
    Intent localIntent = new Intent(paramContext, ContactInfoUI.class);
    localIntent.putExtra("Contact_User", parami.getUsername());
    localIntent.putExtra("Contact_Alias", parami.rp());
    localIntent.putExtra("Contact_Nick", parami.rq());
    localIntent.putExtra("Contact_QuanPin", parami.ro());
    localIntent.putExtra("Contact_PyInitial", parami.rn());
    localIntent.putExtra("Contact_Sex", paramal.rk());
    localIntent.putExtra("Contact_Province", paramal.rC());
    localIntent.putExtra("Contact_City", paramal.rD());
    localIntent.putExtra("Contact_Signature", paramal.rB());
    localIntent.putExtra("Contact_Uin", paramal.aCx());
    localIntent.putExtra("Contact_Mobile_MD5", paramal.aCw());
    localIntent.putExtra("Contact_full_Mobile_MD5", paramal.aCz());
    localIntent.putExtra("Contact_QQNick", paramal.aCy());
    localIntent.putExtra("User_From_Fmessage", true);
    localIntent.putExtra("Contact_Scene", paramal.Gf());
    localIntent.putExtra("Contact_from_msgType", 40);
    if (paramBoolean1)
      localIntent.putExtra("Contact_ShowUserName", false);
    if (paramBoolean2)
      localIntent.putExtra("Contact_KSnsIFlag", 0);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    if (!TextUtils.isEmpty(paramString))
      localIntent.putExtra("verify_gmail", paramString);
    paramContext.startActivity(localIntent);
  }

  public static void b(Intent paramIntent, String paramString)
  {
    if ((paramIntent == null) || (paramString == null) || (paramString.length() == 0))
      aa.e("MicroMsg.ContactInfoUtil", "setLocalQQMobile fail, intent = " + paramIntent + ", username = " + paramString);
    h localh;
    do
    {
      return;
      av localav = ax.Aq().fM(paramString);
      if (localav != null)
      {
        paramIntent.putExtra("Contact_Uin", localav.Af());
        paramIntent.putExtra("Contact_QQNick", localav.getDisplayName());
      }
      localh = ax.Al().fq(paramString);
    }
    while (localh == null);
    paramIntent.putExtra("Contact_Mobile_MD5", localh.yK());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bh
 * JD-Core Version:    0.6.2
 */
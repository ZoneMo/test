package com.tencent.mm.plugin.extqlauncher.ui;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.tencent.mm.m.af;
import com.tencent.mm.m.m;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import java.util.List;

public class QLauncherCreateShortcutUI extends Activity
{
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.extqlauncher.QLauncherCreateShortcutUI", "onActivityResult resultCode = %s", arrayOfObject1);
    if (paramInt2 != -1)
    {
      finish();
      return;
    }
    switch (paramInt1)
    {
    default:
    case 1:
    }
    while (true)
    {
      finish();
      return;
      if (paramIntent != null)
      {
        List localList = cj.c(paramIntent.getStringExtra("Select_Contact").split(","));
        if ((localList == null) || (localList.size() <= 0))
        {
          aa.e("MicroMsg.extqlauncher.QLauncherCreateShortcutUI", "userNames empty");
        }
        else
        {
          aa.d("MicroMsg.extqlauncher.QLauncherCreateShortcutUI", "userNames count " + localList.size());
          String str = v.th();
          ContentValues[] arrayOfContentValues;
          while (true)
          {
            int i;
            i locali;
            try
            {
              arrayOfContentValues = new ContentValues[localList.size()];
              i = 0;
              if (i >= localList.size())
                break label454;
              locali = be.uz().su().tO((String)localList.get(i));
              if ((locali != null) && (locali.rj() > 0))
                break label257;
              aa.e("MicroMsg.extqlauncher.QLauncherCreateShortcutUI", "no such user");
              finish();
              return;
            }
            catch (Exception localException)
            {
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = localException.getMessage();
              aa.e("MicroMsg.extqlauncher.QLauncherCreateShortcutUI", "bulkInsert shortcut failed, %s", arrayOfObject2);
              Toast.makeText(this, n.bka, 0).show();
            }
            break;
            label257: ContentValues localContentValues = new ContentValues();
            localContentValues.put("source_key", com.tencent.mm.plugin.base.a.a.cNS);
            localContentValues.put("owner_id", str);
            localContentValues.put("unique_id", (String)localList.get(i));
            localContentValues.put("container", Integer.valueOf(1));
            localContentValues.put("item_type", Integer.valueOf(com.tencent.mm.plugin.base.a.a.s(locali)));
            localContentValues.put("name", w.a(locali, (String)localList.get(i)));
            localContentValues.put("icon_path", af.vJ().h((String)localList.get(i), false));
            Intent localIntent = new Intent("com.tencent.mm.action.BIZSHORTCUT");
            localIntent.putExtra("LauncherUI.Shortcut.Username", (String)localList.get(i));
            localIntent.putExtra("LauncherUI.From.Biz.Shortcut", true);
            localIntent.addFlags(67108864);
            localContentValues.put("intent", localIntent.toUri(0));
            arrayOfContentValues[i] = localContentValues;
            i++;
          }
          label454: getContentResolver().bulkInsert(a.dgD, arrayOfContentValues);
          Toast.makeText(this, n.bkb, 0).show();
          com.tencent.mm.plugin.extqlauncher.b.Mw().My();
        }
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.d("MicroMsg.extqlauncher.QLauncherCreateShortcutUI", "onCreate");
    requestWindowFeature(1);
    setContentView(com.tencent.mm.k.aTp);
    Intent localIntent = new Intent();
    String str = v.th();
    localIntent.putExtra("Contact_Compose", true);
    localIntent.putExtra("List_Type", 1);
    localIntent.putExtra("stay_in_wechat", false);
    localIntent.putExtra("Add_address_titile", getString(n.bdk));
    localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.with.all.biz.qq.com");
    localIntent.putExtra("Block_list", str);
    com.tencent.mm.plugin.extqlauncher.a.Mv().b(localIntent, this, 1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.ui.QLauncherCreateShortcutUI
 * JD-Core Version:    0.6.2
 */
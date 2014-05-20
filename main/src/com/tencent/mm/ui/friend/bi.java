package com.tencent.mm.ui.friend;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.tencent.mm.a.j;
import com.tencent.mm.n;
import com.tencent.mm.n.f;
import com.tencent.mm.ui.tools.dl;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class bi
  implements View.OnClickListener
{
  bi(InviteFriendUI paramInviteFriendUI)
  {
  }

  public final void onClick(View paramView)
  {
    switch (InviteFriendUI.a(this.hbF))
    {
    default:
    case 1:
      String str2;
      Uri localUri;
      PackageManager localPackageManager;
      HashMap localHashMap;
      Iterator localIterator2;
      do
      {
        return;
        String str1 = (String)f.c(42, null);
        if ((str1 == null) || (str1.length() == 0))
          str1 = (String)f.c(2, null);
        str2 = this.hbF.getString(n.bpj, new Object[] { str1 });
        localUri = Uri.parse("smsto:" + InviteFriendUI.b(this.hbF));
        Intent localIntent1 = new Intent("android.intent.action.SENDTO", localUri);
        localIntent1.putExtra("sms_body", str2);
        localPackageManager = this.hbF.getPackageManager();
        List localList = localPackageManager.queryIntentActivities(localIntent1, 65536);
        localHashMap = new HashMap();
        Iterator localIterator1 = localList.iterator();
        while (localIterator1.hasNext())
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localIterator1.next();
          if (!localResolveInfo.activityInfo.packageName.equals("com.whatsapp"))
            localHashMap.put(localResolveInfo.activityInfo.name, localResolveInfo);
        }
        if (localHashMap.size() != 1)
          break;
        localIterator2 = localHashMap.keySet().iterator();
      }
      while (!localIterator2.hasNext());
      String str3 = (String)localIterator2.next();
      Intent localIntent2 = new Intent();
      localIntent2.setComponent(new ComponentName(((ResolveInfo)localHashMap.get(str3)).activityInfo.packageName, ((ResolveInfo)localHashMap.get(str3)).activityInfo.name));
      localIntent2.setAction("android.intent.action.SENDTO");
      localIntent2.setData(localUri);
      localIntent2.putExtra("sms_body", str2);
      this.hbF.startActivity(localIntent2);
      InviteFriendUI.c(this.hbF);
      return;
      if (localHashMap.size() > 1)
      {
        dl localdl = new dl(this.hbF);
        localdl.a(new bj(this, localHashMap, localPackageManager));
        localdl.a(new bk(this, localHashMap, localPackageManager));
        localdl.a(new bl(this, localHashMap));
        localdl.b(new bm(this, localHashMap, localUri, str2));
        localdl.cB();
        InviteFriendUI.c(this.hbF);
        return;
      }
      Toast.makeText(this.hbF, n.bxS, 1).show();
      return;
    case 0:
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = j.aw(InviteFriendUI.b(this.hbF));
      new ck(this.hbF, new bn(this)).f(arrayOfInt);
      return;
    case 2:
    }
    new co(this.hbF, new bo(this)).bi(InviteFriendUI.e(this.hbF), InviteFriendUI.b(this.hbF));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bi
 * JD-Core Version:    0.6.2
 */
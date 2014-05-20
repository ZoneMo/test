package com.tencent.mm.ui.tools;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import com.tencent.mm.ak.a;
import com.tencent.mm.booter.NotifyReceiver;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.SimpleLoginUI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ShareToTimeLineUI extends MMActivity
{
  private void aNM()
  {
    Toast.makeText(this, 2131166766, 1).show();
  }

  private void bk(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    if (!cj.hX(paramString1))
    {
      localIntent.putExtra("sns_kemdia_path", paramString1);
      localIntent.putExtra("KFilterId", -1);
    }
    if (!cj.hX(paramString2))
      localIntent.putExtra("Kdescription", paramString2);
    if ((be.uD()) && (!be.uG()))
      a.b(this, "sns", ".ui.SnsUploadUI", localIntent);
    while (true)
    {
      finish();
      return;
      MMWizardActivity.b(this, new Intent(this, SimpleLoginUI.class), getIntent().addFlags(67108864));
    }
  }

  private String h(Uri paramUri)
  {
    if (paramUri == null)
    {
      aa.e("MicroMsg.ShareToTimeLine", "uri is null");
      return null;
    }
    String str1 = paramUri.getScheme();
    if (str1 == null)
      return null;
    if (str1.equalsIgnoreCase("file"))
    {
      aa.i("MicroMsg.ShareToTimeLine", "getFilePath : scheme is SCHEME_FILE");
      return paramUri.getPath();
    }
    if (str1.equalsIgnoreCase("content"))
    {
      aa.i("MicroMsg.ShareToTimeLine", "getFilePath : scheme is SCHEME_CONTENT: " + paramUri.toString());
      Cursor localCursor;
      try
      {
        localCursor = getContentResolver().query(paramUri, null, null, null, null);
        if (localCursor == null)
        {
          aa.e("MicroMsg.ShareToTimeLine", "getFilePath : fail, cursor is null");
          return null;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ShareToTimeLine", "error in getContentResolver().query() : uri = " + paramUri);
        return null;
      }
      if ((localCursor.getCount() <= 0) || (!localCursor.moveToFirst()))
      {
        localCursor.close();
        aa.e("MicroMsg.ShareToTimeLine", "getFilePath : fail, cursor getCount is 0 or moveToFirst fail");
        return null;
      }
      int i = localCursor.getColumnIndex("_data");
      if (i == -1)
      {
        localCursor.close();
        aa.e("MicroMsg.ShareToTimeLine", "getFilePath : columnIdx is -1, column with columnName = _data does not exist");
        return null;
      }
      String str2 = localCursor.getString(i);
      localCursor.close();
      return str2;
    }
    aa.e("MicroMsg.ShareToTimeLine", "unknown scheme");
    return null;
  }

  private static boolean xy(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return false;
    return cj.td(paramString);
  }

  private ArrayList y(Bundle paramBundle)
  {
    ArrayList localArrayList1 = paramBundle.getParcelableArrayList("android.intent.extra.STREAM");
    ArrayList localArrayList2;
    Uri localUri;
    Cursor localCursor;
    if ((localArrayList1 != null) && (localArrayList1.size() > 0))
    {
      localArrayList2 = new ArrayList();
      Iterator localIterator = localArrayList1.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          localUri = (Uri)localIterator.next();
          if ((localUri != null) && (localUri.getScheme() != null))
            if (localUri.getScheme().startsWith("content"))
            {
              localCursor = getContentResolver().query(localUri, null, null, null, null);
              if (localCursor == null)
              {
                aa.e("MicroMsg.ShareToTimeLine", "null cursor");
                continue;
              }
              if (!localCursor.moveToFirst())
                break label247;
            }
        }
    }
    label245: label247: for (String str = localCursor.getString(localCursor.getColumnIndexOrThrow("_data")); ; str = "")
    {
      localCursor.close();
      while (true)
      {
        if (cj.hX(str))
          break label245;
        aa.i("MicroMsg.ShareToTimeLine", "multisend file path: " + str);
        localArrayList2.add(str);
        break;
        if (localUri.getScheme().startsWith("file"))
        {
          str = localUri.getPath();
          continue;
          int i = localArrayList2.size();
          ArrayList localArrayList3 = null;
          if (i > 0)
            localArrayList3 = localArrayList2;
          return localArrayList3;
          aa.e("MicroMsg.ShareToTimeLine", "getParcelableArrayList failed");
          return null;
        }
        else
        {
          str = "";
        }
      }
      break;
    }
  }

  protected final void FR()
  {
    Intent localIntent1 = getIntent();
    if (localIntent1 == null)
    {
      aa.e("MicroMsg.ShareToTimeLine", "launch : fail, intent is null");
      aNM();
      finish();
      return;
    }
    String str1 = localIntent1.getAction();
    Bundle localBundle = localIntent1.getExtras();
    if (cj.hX(str1))
    {
      aa.e("MicroMsg.ShareToTimeLine", "launch : fail, action is null");
      aNM();
      finish();
      return;
    }
    String str2 = localIntent1.getStringExtra("Kdescription");
    String str3 = getIntent().resolveType(this);
    if (cj.hX(str3))
    {
      aNM();
      finish();
      return;
    }
    if (!str3.contains("image"))
    {
      aNM();
      finish();
      return;
    }
    if (str1.equals("android.intent.action.SEND"))
    {
      aa.i("MicroMsg.ShareToTimeLine", "send signal: " + str1);
      String str4 = h((Uri)localBundle.getParcelable("android.intent.extra.STREAM"));
      if ((cj.hX(str4)) || (!xy(str4)))
      {
        if (localIntent1.getBooleanExtra("Ksnsupload_empty_img", false))
        {
          bk(str4, str2);
          return;
        }
        aNM();
        finish();
        return;
      }
      if (!xy(str4))
      {
        aNM();
        finish();
        return;
      }
      bk(str4, str2);
      return;
    }
    if ((str1.equals("android.intent.action.SEND_MULTIPLE")) && (localBundle != null) && (localBundle.containsKey("android.intent.extra.STREAM")))
    {
      aa.i("MicroMsg.ShareToTimeLine", "send multi: " + str1);
      ArrayList localArrayList = y(localBundle);
      if ((localArrayList == null) || (localArrayList.size() == 0))
      {
        aNM();
        finish();
        return;
      }
      Intent localIntent2 = new Intent();
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        if (localArrayList.size() > 9)
          localArrayList.subList(9, localArrayList.size()).clear();
        localIntent2.putStringArrayListExtra("sns_kemdia_path_list", localArrayList);
      }
      if (!cj.hX(str2))
        localIntent2.putExtra("Kdescription", str2);
      if ((be.uD()) && (!be.uG()))
        a.b(this, "sns", ".ui.SnsUploadUI", localIntent2);
      while (true)
      {
        finish();
        return;
        MMWizardActivity.b(this, new Intent(this, SimpleLoginUI.class), getIntent().addFlags(67108864));
      }
    }
    aa.e("MicroMsg.ShareToTimeLine", "launch : fail, uri is null");
    aNM();
    finish();
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    vT("");
    int i = getIntent().getIntExtra("wizard_activity_result_code", 0);
    switch (i)
    {
    default:
      aa.e("MicroMsg.ShareToTimeLine", "onCreate, should not reach here, resultCode = " + i);
      finish();
      return;
    case 1:
      finish();
      return;
    case -1:
    case 0:
    }
    NotifyReceiver.oN();
    be.uA().d(new cb(new fs(this)));
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ShareToTimeLineUI
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.tools;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.booter.NotifyReceiver;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.modelmsg.WXFileObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.WXTextObject;
import com.tencent.mm.sdk.modelmsg.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.SimpleLoginUI;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.ui.transmit.SelectConversationUI;
import com.tencent.mm.ui.transmit.SendAppMessageWrapperUI;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public class ShareImgUI extends MMActivity
{
  private ProgressDialog cIr = null;
  String filePath = null;
  private Handler handler = new fo(this);
  private fq hmm;
  ArrayList hmn = null;
  private Intent intent = null;
  String text = null;
  Uri uri = null;

  private String a(Uri paramUri, Cursor paramCursor)
  {
    String str1;
    if (paramUri != null)
    {
      str1 = "contact.vcf";
      int i = paramCursor.getColumnIndex("_display_name");
      if (i != -1)
      {
        str1 = paramCursor.getString(i);
        if ((str1 != null) && (str1 != null))
          str1 = str1.replaceAll("[^.\\w]+", "_");
        aa.i("MicroMsg.ShareImgUI", "vcard file name: " + str1);
      }
      paramCursor.close();
    }
    String str3;
    try
    {
      AssetFileDescriptor localAssetFileDescriptor = getContentResolver().openAssetFileDescriptor(paramUri, "r");
      FileInputStream localFileInputStream = localAssetFileDescriptor.createInputStream();
      byte[] arrayOfByte = new byte[(int)localAssetFileDescriptor.getDeclaredLength()];
      if (localFileInputStream.read(arrayOfByte) > 0)
      {
        if (!be.uz().isSDCardAvailable())
        {
          deleteFile(str1);
          FileOutputStream localFileOutputStream = openFileOutput(str1, 0);
          localFileOutputStream.write(arrayOfByte);
          localFileOutputStream.flush();
          localFileOutputStream.close();
          return getFilesDir().getPath() + "/" + str1;
        }
        String str2 = com.tencent.mm.storage.h.cfE + "share";
        str3 = com.tencent.mm.storage.h.cfE + "share/" + str1;
        File localFile1 = new File(str2);
        if (!localFile1.exists())
          localFile1.mkdir();
        File localFile2 = new File(str3);
        if (!localFile2.exists())
          localFile2.createNewFile();
        int j = c.a(str3, arrayOfByte, arrayOfByte.length);
        if (j == 0);
      }
      else
      {
        return null;
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
        aa.e("MicroMsg.ShareImgUI", "vcard uri file not found " + localFileNotFoundException.getMessage());
    }
    catch (IOException localIOException)
    {
      while (true)
        aa.e("MicroMsg.ShareImgUI", "vcard uri ioexception" + localIOException.getMessage());
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.ShareImgUI", "vcard uri exception" + localException.getMessage());
    }
    return str3;
  }

  private void aNL()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.filePath;
    aa.d("MicroMsg.ShareImgUI", "filepath:[%s]", arrayOfObject);
    Intent localIntent = getIntent();
    String str1 = localIntent.resolveType(this);
    int i;
    if ((str1 == null) || (str1.length() == 0))
    {
      aa.e("MicroMsg.ShareImgUI", "map : mimeType is null");
      i = -1;
    }
    while (i == -1)
    {
      aa.e("MicroMsg.ShareImgUI", "launch, msgType is invalid");
      finish();
      return;
      String str2 = str1.toLowerCase();
      if (str2.contains("image"))
      {
        i = 0;
      }
      else if (str2.contains("video"))
      {
        i = 1;
      }
      else
      {
        aa.d("MicroMsg.ShareImgUI", "map : unknown mimetype, send as file");
        i = 3;
      }
    }
    if ((i == 3) && (!cj.hX(this.filePath)))
    {
      bj(this.filePath, null);
      finish();
      return;
    }
    if ((this.text != null) && (i == 0) && (!cj.hX(this.filePath)))
    {
      bj(this.filePath, this.text);
      finish();
      return;
    }
    if ((!getIntent().getBooleanExtra("Intro_Switch", false)) && (be.uD()) && (!be.uG()))
    {
      localIntent.setData(this.uri);
      localIntent.setClass(this, MsgRetransmitUI.class);
      localIntent.putExtra("Retr_File_Name", this.filePath);
      localIntent.putStringArrayListExtra("Retr_File_Path_List", this.hmn);
      localIntent.putExtra("Retr_Msg_Type", i);
      localIntent.putExtra("Retr_Scene", 1);
      startActivity(localIntent);
    }
    while (true)
    {
      finish();
      return;
      localIntent.putExtras(getIntent());
      localIntent.addFlags(67108864);
      localIntent.setType(getIntent().getType());
      MMWizardActivity.b(this, new Intent(this, SimpleLoginUI.class), localIntent);
    }
  }

  private void aNM()
  {
    oj(0);
    Toast.makeText(this, 2131166764, 1).show();
  }

  private void bj(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      aa.e("MicroMsg.ShareImgUI", "dealWithFile fail, filePath is empty");
      return;
    }
    int i = c.ar(paramString1);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    aa.d("MicroMsg.ShareImgUI", "filelength: [%d]", arrayOfObject);
    if (i == 0)
    {
      aa.e("MicroMsg.ShareImgUI", "dealWithFile fail, fileLength is 0");
      return;
    }
    if (i > 10485760)
    {
      aa.e("MicroMsg.ShareImgUI", "dealWithFile fail, fileLength is too large");
      Toast.makeText(this, 2131166767, 1).show();
      return;
    }
    WXMediaMessage localWXMediaMessage = new WXMediaMessage(new WXFileObject(paramString1));
    localWXMediaMessage.title = new File(paramString1).getName();
    if (paramString2 != null)
      if (paramString2.length() > 0)
      {
        localWXMediaMessage.description = paramString2;
        if (i >= 30720)
          break label304;
        localWXMediaMessage.thumbData = c.g(paramString1, 0, -1);
      }
    while (true)
    {
      j localj = new j();
      localj.fhS = null;
      localj.gca = localWXMediaMessage;
      Bundle localBundle = new Bundle();
      localj.h(localBundle);
      localBundle.putInt("_mmessage_sdkVersion", 570490883);
      localBundle.putString("_mmessage_appPackage", "com.tencent.mm.openapi");
      localBundle.putString("SendAppMessageWrapper_AppId", "wx4310bbd51be7d979");
      Intent localIntent = new Intent();
      localIntent.setClass(this, SelectConversationUI.class);
      localIntent.putExtra("Select_Conv_NextStep", new Intent(this, SendAppMessageWrapperUI.class).putExtras(localBundle));
      if ((!be.uD()) || (be.uG()))
        break label328;
      startActivity(localIntent);
      return;
      localWXMediaMessage.description = cj.K(i);
      break;
      label304: aa.i("MicroMsg.ShareImgUI", "thumb data is exceed 30k, ignore");
      continue;
      localWXMediaMessage.description = cj.K(i);
    }
    label328: aa.w("MicroMsg.ShareImgUI", "not logged in, jump to simple login");
    MMWizardActivity.b(this, new Intent(this, SimpleLoginUI.class), getIntent().addFlags(67108864));
  }

  private void oj(int paramInt)
  {
    switch (paramInt)
    {
    default:
      Toast.makeText(this, 2131166764, 1).show();
      return;
    case 1:
    }
    Toast.makeText(this, 2131166765, 1).show();
  }

  private ArrayList y(Bundle paramBundle)
  {
    ArrayList localArrayList1 = paramBundle.getParcelableArrayList("android.intent.extra.STREAM");
    ArrayList localArrayList2;
    Uri localUri;
    Cursor localCursor;
    label112: int i;
    label115: label120: String str1;
    if ((localArrayList1 != null) && (localArrayList1.size() > 0))
    {
      localArrayList2 = new ArrayList();
      Iterator localIterator = localArrayList1.iterator();
      if (localIterator.hasNext())
      {
        localUri = (Uri)localIterator.next();
        if ((localUri != null) && (localUri.getScheme() != null))
        {
          if (!localUri.getScheme().startsWith("content"))
            break label330;
          localCursor = getContentResolver().query(localUri, null, null, null, null);
          if (localCursor == null)
            aa.e("MicroMsg.ShareImgUI", "null cursor");
        }
        else
        {
          i = 0;
          if (i != 0)
            break label328;
          return null;
        }
        if (localCursor.moveToFirst())
        {
          int j = localCursor.getColumnIndex("_data");
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(j);
          aa.d("MicroMsg.ShareImgUI", "getMultiSendFilePath  dataColumnIndex:[%d]", arrayOfObject1);
          if (j > 0)
          {
            str1 = localCursor.getString(j);
            int k = localCursor.getColumnIndex("mime_type");
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Integer.valueOf(j);
            aa.d("MicroMsg.ShareImgUI", "getMultiSendFilePath  typeColumnIndex:[%d]", arrayOfObject2);
            if (k <= 0)
              break label388;
          }
        }
      }
    }
    label386: label388: for (String str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("mime_type")); ; str2 = null)
    {
      if ((str2 == null) || (!str2.contains("image")))
      {
        i = 0;
        break label115;
        i = 0;
        break label115;
        str1 = "";
      }
      localCursor.close();
      while (true)
      {
        if (cj.hX(str1))
          break label386;
        aa.i("MicroMsg.ShareImgUI", "multisend file path: " + str1);
        localArrayList2.add(str1);
        i = 1;
        break label115;
        label328: break;
        label330: if (localUri.getScheme().startsWith("file"))
        {
          str1 = localUri.getPath();
          if (!cj.sU(str1))
            break label112;
          continue;
          if (localArrayList2.size() <= 0)
            break label120;
          return localArrayList2;
          aa.e("MicroMsg.ShareImgUI", "getParcelableArrayList failed");
          return null;
        }
        str1 = "";
      }
      break label112;
    }
  }

  protected final void FR()
  {
    this.intent = getIntent();
    if (this.intent == null)
    {
      aa.e("MicroMsg.ShareImgUI", "launch : fail, intent is null");
      aNM();
      finish();
      return;
    }
    String str1 = this.intent.getAction();
    Bundle localBundle1 = this.intent.getExtras();
    if (cj.hX(str1))
    {
      aa.e("MicroMsg.ShareImgUI", "launch : fail, action is null");
      aNM();
      finish();
      return;
    }
    this.text = this.intent.getStringExtra("android.intent.extra.TEXT");
    this.uri = ((Uri)localBundle1.getParcelable("android.intent.extra.STREAM"));
    if (str1.equals("android.intent.action.SEND"))
    {
      aa.i("MicroMsg.ShareImgUI", "send signal: " + str1);
      if (this.uri == null)
      {
        Intent localIntent1 = getIntent();
        if (localIntent1 == null)
          aa.e("MicroMsg.ShareImgUI", "intent is null");
        String str2;
        for (boolean bool = false; ; bool = false)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(bool);
          aa.d("MicroMsg.ShareImgUI", "dealWithText: %b", arrayOfObject);
          finish();
          return;
          str2 = localIntent1.getStringExtra("android.intent.extra.TEXT");
          if ((str2 != null) && (str2.length() != 0))
            break;
          aa.i("MicroMsg.ShareImgUI", "text is null");
        }
        WXMediaMessage localWXMediaMessage = new WXMediaMessage(new WXTextObject(str2));
        localWXMediaMessage.description = str2;
        j localj = new j();
        localj.fhS = null;
        localj.gca = localWXMediaMessage;
        Bundle localBundle2 = new Bundle();
        localj.h(localBundle2);
        localBundle2.putInt("_mmessage_sdkVersion", 570490883);
        localBundle2.putString("_mmessage_appPackage", "com.tencent.mm.openapi");
        localBundle2.putString("SendAppMessageWrapper_AppId", "wx4310bbd51be7d979");
        Intent localIntent2 = new Intent();
        localIntent2.setClass(this, SelectConversationUI.class);
        localIntent2.putExtra("Select_Conv_NextStep", new Intent(this, SendAppMessageWrapperUI.class).putExtras(localBundle2));
        if ((be.uD()) && (!be.uG()))
          startActivity(localIntent2);
        while (true)
        {
          bool = true;
          break;
          aa.w("MicroMsg.ShareImgUI", "not logged in, jump to simple login");
          MMWizardActivity.b(this, new Intent(this, SimpleLoginUI.class), getIntent().addFlags(67108864));
        }
      }
      getString(2131167675);
      this.cIr = com.tencent.mm.ui.base.h.a(this, getString(2131167726), true, new fp(this));
      this.hmm = new fq(this, this.uri, new fn(this));
      this.hmm.start();
      return;
    }
    if ((str1.equals("android.intent.action.SEND_MULTIPLE")) && (localBundle1 != null) && (localBundle1.containsKey("android.intent.extra.STREAM")))
    {
      aa.i("MicroMsg.ShareImgUI", "send multi: " + str1);
      if (!getIntent().resolveType(this).contains("image"))
      {
        oj(1);
        finish();
        return;
      }
      this.hmn = y(localBundle1);
      if ((this.hmn == null) || (this.hmn.size() == 0))
      {
        aa.e("MicroMsg.ShareImgUI", "launch : fail, filePathList is null");
        oj(1);
        finish();
        return;
      }
      aNL();
      return;
    }
    aa.e("MicroMsg.ShareImgUI", "launch : fail, uri is null");
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
      aa.e("MicroMsg.ShareImgUI", "onCreate, should not reach here, resultCode = " + i);
      finish();
      return;
    case 1:
      finish();
      return;
    case -1:
    case 0:
    }
    NotifyReceiver.oN();
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ShareImgUI
 * JD-Core Version:    0.6.2
 */
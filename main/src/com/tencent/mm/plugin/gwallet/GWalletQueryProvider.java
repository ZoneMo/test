package com.tencent.mm.plugin.gwallet;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.tencent.mm.plugin.gwallet.a.b;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class GWalletQueryProvider extends ContentProvider
{
  public static final String[] cs = { "_id", "product_id", "full_price", "product_state" };
  private final String TAG = "MicroMsg.GWalletQueryProvider";
  private b dsE = null;
  private boolean dsF;
  private boolean dsG;
  private ArrayList dsH;
  private ArrayList dsI;
  private int dsJ;
  private Context mContext = null;

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public String getType(Uri paramUri)
  {
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public boolean onCreate()
  {
    aa.d("MicroMsg.GWalletQueryProvider", "successfully loaded");
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    try
    {
      aa.d("MicroMsg.GWalletQueryProvider", "Creating IAB helper.");
      if ((paramArrayOfString2 == null) || (paramArrayOfString2.length == 0))
      {
        aa.d("MicroMsg.GWalletQueryProvider", "no product id selected or size is 0");
        throw new IllegalArgumentException("no product id selected or size is 0");
      }
    }
    finally
    {
    }
    this.mContext = getContext();
    this.dsE = new b(this.mContext);
    this.dsF = true;
    this.dsG = false;
    this.dsI = new ArrayList();
    int i = paramArrayOfString2.length;
    for (int j = 0; j < i; j++)
    {
      String str1 = paramArrayOfString2[j];
      this.dsI.add(str1);
    }
    aa.d("MicroMsg.GWalletQueryProvider", "Starting setup.");
    this.dsE.a(new a(this));
    long l = 0L;
    while ((l <= 30000L) && (this.dsF))
    {
      boolean bool = this.dsG;
      if (bool)
        break;
      try
      {
        Thread.sleep(100L);
        l += 100L;
      }
      catch (InterruptedException localInterruptedException)
      {
        aa.e("MicroMsg.GWalletQueryProvider", localInterruptedException.toString());
      }
    }
    if (!this.dsF)
    {
      aa.d("MicroMsg.GWalletQueryProvider", "unable to setup");
      MatrixCursor localMatrixCursor3 = new MatrixCursor(cs);
      Iterator localIterator5 = this.dsI.iterator();
      while (localIterator5.hasNext())
      {
        String str8 = (String)localIterator5.next();
        Object[] arrayOfObject5 = new Object[4];
        arrayOfObject5[0] = Integer.valueOf(0);
        arrayOfObject5[1] = str8;
        arrayOfObject5[2] = "";
        arrayOfObject5[3] = Integer.valueOf(10234);
        localMatrixCursor3.addRow(arrayOfObject5);
      }
      return localMatrixCursor3;
    }
    if (l > 30000L)
    {
      aa.d("MicroMsg.GWalletQueryProvider", "time's out");
      MatrixCursor localMatrixCursor1 = new MatrixCursor(cs);
      Iterator localIterator1 = this.dsI.iterator();
      while (localIterator1.hasNext())
      {
        String str2 = (String)localIterator1.next();
        Object[] arrayOfObject1 = new Object[4];
        arrayOfObject1[0] = Integer.valueOf(0);
        arrayOfObject1[1] = str2;
        arrayOfObject1[2] = "";
        arrayOfObject1[3] = Integer.valueOf(10235);
        localMatrixCursor1.addRow(arrayOfObject1);
      }
      return localMatrixCursor1;
    }
    aa.d("MicroMsg.GWalletQueryProvider", "successfully queried!");
    MatrixCursor localMatrixCursor2 = new MatrixCursor(cs);
    Iterator localIterator3;
    int k;
    if (this.dsJ == 0)
    {
      localIterator3 = this.dsH.iterator();
      k = 0;
    }
    while (true)
    {
      String str5;
      if (localIterator3.hasNext())
        str5 = (String)localIterator3.next();
      try
      {
        JSONObject localJSONObject = new JSONObject(str5);
        String str6 = localJSONObject.getString("productId");
        String str7 = localJSONObject.getString("price");
        Integer localInteger = Integer.valueOf(10232);
        Object[] arrayOfObject4 = new Object[4];
        n = k + 1;
        try
        {
          arrayOfObject4[0] = Integer.valueOf(k);
          arrayOfObject4[1] = str6;
          arrayOfObject4[2] = str7;
          arrayOfObject4[3] = localInteger;
          localMatrixCursor2.addRow(arrayOfObject4);
          this.dsI.remove(str6);
          k = n;
        }
        catch (JSONException localJSONException1)
        {
        }
        aa.d("MicroMsg.GWalletQueryProvider", localJSONException1.toString());
        k = n;
        continue;
        Iterator localIterator4 = this.dsI.iterator();
        while (localIterator4.hasNext())
        {
          String str4 = (String)localIterator4.next();
          Object[] arrayOfObject3 = new Object[4];
          int m = k + 1;
          arrayOfObject3[0] = Integer.valueOf(k);
          arrayOfObject3[1] = str4;
          arrayOfObject3[2] = "";
          arrayOfObject3[3] = Integer.valueOf(10233);
          localMatrixCursor2.addRow(arrayOfObject3);
          k = m;
          continue;
          Iterator localIterator2 = this.dsI.iterator();
          while (localIterator2.hasNext())
          {
            String str3 = (String)localIterator2.next();
            Object[] arrayOfObject2 = new Object[4];
            arrayOfObject2[0] = Integer.valueOf(0);
            arrayOfObject2[1] = str3;
            arrayOfObject2[2] = "";
            arrayOfObject2[3] = Integer.valueOf(10236);
            localMatrixCursor2.addRow(arrayOfObject2);
          }
        }
        return localMatrixCursor2;
      }
      catch (JSONException localJSONException2)
      {
        while (true)
          int n = k;
      }
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.GWalletQueryProvider
 * JD-Core Version:    0.6.2
 */
.class public final Lcom/tencent/mapapi/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Uk:Z

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mapapi/a/e;->a:I

    .line 18
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Z)Lcom/tencent/a/a/c;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 241
    const/4 v1, 0x0

    .line 243
    :try_start_0
    new-instance v5, Lcom/tencent/a/a/c;

    invoke-direct {v5}, Lcom/tencent/a/a/c;-><init>()V

    .line 244
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 245
    const-string v3, "GBK"

    if-eqz v6, :cond_0

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v4, v0

    :goto_0
    if-lt v4, v8, :cond_6

    :cond_0
    :goto_1
    iput-object v3, v5, Lcom/tencent/a/a/c;->XZ:Ljava/lang/String;

    .line 246
    if-eqz p1, :cond_1

    .line 247
    if-eqz v6, :cond_8

    const-string v3, "vnd.wap.wml"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 249
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 253
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_4

    .line 256
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v5, Lcom/tencent/a/a/c;->data:[B

    .line 258
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 261
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 262
    if-lez v3, :cond_3

    .line 263
    add-int/2addr v0, v3

    .line 264
    new-array v4, v0, [B

    .line 265
    iget-object v6, v5, Lcom/tencent/a/a/c;->data:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/tencent/a/a/c;->data:[B

    array-length v9, v9

    invoke-static {v6, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    const/4 v6, 0x0

    iget-object v7, v5, Lcom/tencent/a/a/c;->data:[B

    array-length v7, v7

    invoke-static {v2, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iput-object v4, v5, Lcom/tencent/a/a/c;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_3
    if-gtz v3, :cond_2

    .line 273
    :cond_4
    if-eqz v1, :cond_5

    .line 275
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :cond_5
    :goto_3
    return-object v5

    .line 245
    :cond_6
    :try_start_2
    aget-object v9, v7, v4

    const-string v10, "charset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v4, "="

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-le v7, v2, :cond_0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    move v2, v0

    .line 247
    goto :goto_2

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    if-eqz v1, :cond_9

    .line 275
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 279
    :cond_9
    :goto_4
    throw v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;[B)Lcom/tencent/a/a/c;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-static {}, Lcom/tencent/a/a/b;->nb()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    new-instance v0, Lcom/tencent/mapapi/a/f;

    invoke-direct {v0}, Lcom/tencent/mapapi/a/f;-><init>()V

    throw v0

    .line 159
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tencent/mapapi/a/e;->an(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/tencent/mapapi/a/d; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 161
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lcom/tencent/mapapi/a/g;->ak(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 162
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v4}, Lcom/tencent/mapapi/a/g;->ak(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    :cond_1
    :goto_0
    if-eqz p0, :cond_a

    .line 171
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 175
    :goto_1
    invoke-static {}, Lcom/tencent/a/a/d;->mT()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 176
    invoke-static {}, Lcom/tencent/a/a/d;->mU()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 177
    const-string v4, "User-Agent"

    invoke-virtual {v3, v4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 179
    if-eqz p0, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 181
    invoke-static {v3}, Lcom/tencent/a/a/d;->b(Ljava/net/HttpURLConnection;)V

    .line 186
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 187
    invoke-static {}, Lcom/tencent/a/a/d;->mO()V

    .line 189
    if-nez p0, :cond_3

    if-eqz p3, :cond_3

    array-length v2, p3

    if-eqz v2, :cond_3

    .line 190
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/tencent/mapapi/a/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :try_start_2
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 192
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 193
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lcom/tencent/mapapi/a/d; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 196
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 198
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_4

    .line 199
    const/16 v4, 0xce

    if-ne v2, v4, :cond_b

    .line 200
    :cond_4
    invoke-static {}, Lcom/tencent/a/a/d;->mF()V

    .line 201
    invoke-static {v3, p0}, Lcom/tencent/mapapi/a/e;->a(Ljava/net/HttpURLConnection;Z)Lcom/tencent/a/a/c;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/tencent/a/a/c;->data:[B

    if-eqz v4, :cond_5

    iget-object v0, v2, Lcom/tencent/a/a/c;->data:[B

    array-length v0, v0

    :cond_5
    invoke-static {v0}, Lcom/tencent/a/a/d;->bb(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/tencent/mapapi/a/d; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 205
    if-eqz v3, :cond_6

    .line 231
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    :cond_6
    return-object v2

    .line 167
    :cond_7
    :try_start_4
    const-string v4, "Host"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/tencent/mapapi/a/d; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 221
    :goto_2
    const/4 v3, 0x1

    :try_start_5
    invoke-static {v3}, Lcom/tencent/a/a/d;->F(Z)V

    .line 222
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 227
    :goto_3
    if-eqz v1, :cond_8

    .line 228
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 230
    :cond_8
    if-eqz v3, :cond_9

    .line 231
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 233
    :cond_9
    throw v0

    .line 173
    :cond_a
    :try_start_6
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/tencent/mapapi/a/d; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    :goto_4
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v2}, Lcom/tencent/a/a/d;->F(Z)V

    .line 225
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 226
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 206
    :cond_b
    const/16 v0, 0xca

    if-eq v2, v0, :cond_c

    .line 207
    const/16 v0, 0xc9

    if-eq v2, v0, :cond_c

    .line 208
    const/16 v0, 0xcc

    if-eq v2, v0, :cond_c

    .line 209
    const/16 v0, 0xcd

    if-eq v2, v0, :cond_c

    .line 210
    const/16 v0, 0x130

    if-eq v2, v0, :cond_c

    .line 211
    const/16 v0, 0x131

    if-eq v2, v0, :cond_c

    .line 212
    const/16 v0, 0x198

    if-eq v2, v0, :cond_c

    .line 213
    const/16 v0, 0x1f6

    if-eq v2, v0, :cond_c

    .line 214
    const/16 v0, 0x1f8

    if-eq v2, v0, :cond_c

    .line 215
    const/16 v0, 0x1f7

    if-ne v2, v0, :cond_d

    .line 216
    :cond_c
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "doGetOrPost retry"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_d
    new-instance v0, Lcom/tencent/mapapi/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/mapapi/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/tencent/mapapi/a/d; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 226
    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 223
    :catch_2
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 220
    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x50

    const/4 v6, -0x1

    .line 422
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    .line 424
    if-ne v0, v6, :cond_0

    move v0, v1

    .line 428
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 430
    if-ne v2, v6, :cond_2

    .line 435
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    :goto_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 450
    const-string v2, "X-Online-Host"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_2
    return-object v0

    .line 438
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 445
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v1, v2

    goto/16 :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Z
    .locals 3
    .parameter

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 390
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 393
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 406
    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 404
    :cond_1
    :goto_0
    return v0

    .line 397
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 398
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_3

    .line 402
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 403
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 404
    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 399
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 405
    :catchall_0
    move-exception v0

    .line 406
    if-eqz v1, :cond_4

    .line 407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 409
    :cond_4
    throw v0
.end method

.method private static an(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-static {}, Lcom/tencent/a/a/b;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 61
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :goto_1
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {}, Lcom/tencent/a/a/f;->mS()I

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapapi/a/g;->ak(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 69
    :cond_2
    sget v0, Lcom/tencent/mapapi/a/e;->a:I

    if-nez v0, :cond_4

    .line 71
    sget-boolean v0, Lcom/tencent/mapapi/a/e;->Uk:Z

    if-nez v0, :cond_4

    sput-boolean v3, Lcom/tencent/mapapi/a/e;->Uk:Z

    :try_start_2
    new-instance v3, Ljava/net/URL;

    const-string v0, "http://ls.map.soso.com/monitor/monitor.html"

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-ne v0, v6, :cond_3

    const/16 v0, 0x50

    :cond_3
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xafc8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "User-Agent"

    const-string v3, "QQ Map Mobile"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {v0}, Lcom/tencent/mapapi/a/e;->a(Ljava/net/HttpURLConnection;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/mapapi/a/e;->bb(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_4
    :goto_3
    :try_start_5
    sget v0, Lcom/tencent/mapapi/a/e;->a:I

    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-ne v0, v6, :cond_5

    const/16 v0, 0x50

    :cond_5
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 71
    :catch_2
    move-exception v0

    sput-boolean v2, Lcom/tencent/mapapi/a/e;->Uk:Z

    goto :goto_3

    :cond_6
    const/4 v2, 0x2

    :try_start_6
    invoke-static {v2}, Lcom/tencent/mapapi/a/e;->bb(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    :goto_4
    const/4 v2, 0x2

    :try_start_7
    invoke-static {v2}, Lcom/tencent/mapapi/a/e;->bb(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    .line 78
    :pswitch_0
    :try_start_8
    invoke-static {v4, p0}, Lcom/tencent/mapapi/a/e;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v0

    goto/16 :goto_1

    .line 84
    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    .line 71
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static bb(I)V
    .locals 1
    .parameter

    .prologue
    .line 310
    sget v0, Lcom/tencent/mapapi/a/e;->a:I

    if-ne v0, p0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    sput p0, Lcom/tencent/mapapi/a/e;->a:I

    goto :goto_0
.end method

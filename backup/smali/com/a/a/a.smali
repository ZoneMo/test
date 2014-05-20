.class public final Lcom/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static R(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 103
    const-string v0, "com.tencent.mtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.qbx"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.mtt.x86"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.qbx5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/a/a/c;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    .line 397
    :cond_0
    new-instance v1, Lcom/a/a/c;

    invoke-direct {v1, v2}, Lcom/a/a/c;-><init>(B)V

    .line 398
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 400
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 401
    const-string v4, "com.tencent.mtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/a/a/c;->classname:Ljava/lang/String;

    .line 404
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/c;->JS:Ljava/lang/String;

    move-object v0, v1

    .line 405
    goto :goto_0

    .line 407
    :cond_2
    const-string v4, "com.tencent.qbx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/a/a/c;->classname:Ljava/lang/String;

    .line 410
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/c;->JS:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 413
    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 171
    if-nez p0, :cond_0

    .line 173
    const/4 v0, 0x3

    .line 294
    :goto_0
    return v0

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v4

    :goto_1
    if-nez v0, :cond_2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    if-nez v0, :cond_5

    move v0, v2

    .line 187
    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v1, :cond_4

    if-lez v6, :cond_4

    if-le v1, v6, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 189
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "qb"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/a/a/a;->h(Landroid/content/Context;)Lcom/a/a/b;

    move-result-object v1

    iget v6, v1, Lcom/a/a/b;->JP:I

    if-ne v6, v8, :cond_7

    move v1, v4

    :goto_2
    if-nez v1, :cond_6

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://mdc.html5.qq.com/d/directdown.jsp?channel_id=10318"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 201
    :cond_6
    invoke-static {p0}, Lcom/a/a/a;->h(Landroid/content/Context;)Lcom/a/a/b;

    move-result-object v6

    .line 202
    iget v1, v6, Lcom/a/a/b;->JP:I

    if-ne v1, v8, :cond_9

    move v0, v3

    .line 204
    goto/16 :goto_0

    .line 189
    :cond_7
    :try_start_2
    iget v6, v1, Lcom/a/a/b;->JP:I

    if-ne v6, v2, :cond_8

    iget v1, v1, Lcom/a/a/b;->JQ:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v6, 0x2a

    if-ge v1, v6, :cond_8

    move v1, v4

    goto :goto_2

    :cond_8
    move v1, v5

    goto :goto_2

    .line 197
    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    .line 206
    :cond_9
    iget v1, v6, Lcom/a/a/b;->JP:I

    if-ne v1, v2, :cond_a

    iget v1, v6, Lcom/a/a/b;->JQ:I

    const/16 v7, 0x21

    if-ge v1, v7, :cond_a

    .line 209
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 213
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    iget v7, v6, Lcom/a/a/b;->JP:I

    if-ne v7, v2, :cond_e

    .line 216
    iget v2, v6, Lcom/a/a/b;->JQ:I

    const/16 v5, 0x21

    if-lt v2, v5, :cond_c

    iget v2, v6, Lcom/a/a/b;->JQ:I

    const/16 v5, 0x27

    if-gt v2, v5, :cond_c

    .line 219
    const-string v2, "com.tencent.mtt"

    const-string v5, "com.tencent.mtt.MainActivity"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :cond_b
    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    :try_start_3
    const-string v0, "loginType"

    const/16 v2, 0x18

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v4

    .line 294
    goto/16 :goto_0

    .line 221
    :cond_c
    iget v2, v6, Lcom/a/a/b;->JQ:I

    const/16 v5, 0x28

    if-lt v2, v5, :cond_d

    iget v2, v6, Lcom/a/a/b;->JQ:I

    const/16 v5, 0x2d

    if-gt v2, v5, :cond_d

    .line 224
    const-string v2, "com.tencent.mtt"

    const-string v5, "com.tencent.mtt.SplashActivity"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 226
    :cond_d
    iget v2, v6, Lcom/a/a/b;->JQ:I

    const/16 v5, 0x2e

    if-lt v2, v5, :cond_b

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-static {p0, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/a/a/c;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_b

    iget-object v5, v2, Lcom/a/a/c;->classname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 234
    iget-object v5, v2, Lcom/a/a/c;->JS:Ljava/lang/String;

    iget-object v2, v2, Lcom/a/a/c;->classname:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 238
    :cond_e
    iget v7, v6, Lcom/a/a/b;->JP:I

    if-ne v7, v5, :cond_10

    .line 240
    iget v7, v6, Lcom/a/a/b;->JQ:I

    if-ne v7, v5, :cond_f

    .line 243
    const-string v2, "com.tencent.qbx5"

    const-string v5, "com.tencent.qbx5.MainActivity"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 245
    :cond_f
    iget v5, v6, Lcom/a/a/b;->JQ:I

    if-ne v5, v2, :cond_b

    .line 248
    const-string v2, "com.tencent.qbx5"

    const-string v5, "com.tencent.qbx5.SplashActivity"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 251
    :cond_10
    iget v2, v6, Lcom/a/a/b;->JP:I

    if-nez v2, :cond_12

    .line 253
    iget v2, v6, Lcom/a/a/b;->JQ:I

    if-lt v2, v3, :cond_11

    iget v2, v6, Lcom/a/a/b;->JQ:I

    const/4 v5, 0x6

    if-gt v2, v5, :cond_11

    .line 256
    const-string v2, "com.tencent.qbx"

    const-string v5, "com.tencent.qbx.SplashActivity"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 258
    :cond_11
    iget v2, v6, Lcom/a/a/b;->JQ:I

    const/4 v5, 0x6

    if-le v2, v5, :cond_b

    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-static {p0, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/a/a/c;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_b

    iget-object v5, v2, Lcom/a/a/c;->classname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 266
    iget-object v5, v2, Lcom/a/a/c;->JS:Ljava/lang/String;

    iget-object v2, v2, Lcom/a/a/c;->classname:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 273
    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-static {p0, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/a/a/c;

    move-result-object v2

    .line 275
    if-eqz v2, :cond_b

    iget-object v5, v2, Lcom/a/a/c;->classname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 278
    iget-object v5, v2, Lcom/a/a/c;->JS:Ljava/lang/String;

    iget-object v2, v2, Lcom/a/a/c;->classname:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 291
    :catch_1
    move-exception v0

    move v0, v3

    goto/16 :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-static {p0}, Lcom/a/a/a;->h(Landroid/content/Context;)Lcom/a/a/b;

    move-result-object v1

    .line 87
    iget v2, v1, Lcom/a/a/b;->JP:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget v2, v1, Lcom/a/a/b;->JP:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v1, v1, Lcom/a/a/b;->JQ:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 98
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Lcom/a/a/b;
    .locals 7
    .parameter

    .prologue
    .line 299
    new-instance v1, Lcom/a/a/b;

    invoke-direct {v1}, Lcom/a/a/b;-><init>()V

    .line 304
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    .line 305
    const/4 v0, 0x0

    .line 310
    :try_start_1
    const-string v3, "com.tencent.mtt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 311
    const/4 v3, 0x2

    iput v3, v1, Lcom/a/a/b;->JP:I

    .line 312
    const-string v3, "ADRQB_"

    iput-object v3, v1, Lcom/a/a/b;->JR:Ljava/lang/String;

    .line 313
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x668a0

    if-le v3, v4, :cond_0

    .line 315
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, v1, Lcom/a/a/b;->JQ:I

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/a/a/b;->JR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v5, "\\."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/a/a/b;->JR:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v0, v1

    .line 385
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    .line 326
    :cond_0
    :try_start_2
    const-string v3, "com.tencent.qbx"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 327
    const/4 v3, 0x0

    iput v3, v1, Lcom/a/a/b;->JP:I

    .line 328
    const-string v3, "ADRQBX_"

    iput-object v3, v1, Lcom/a/a/b;->JR:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 374
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 376
    :try_start_3
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/a/a/b;->JQ:I

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/a/a/b;->JR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/a/a/b;->JR:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_2
    move-object v0, v1

    .line 385
    goto :goto_0

    :catch_1
    move-exception v3

    .line 334
    :try_start_4
    const-string v3, "com.tencent.qbx5"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 335
    const/4 v3, 0x1

    iput v3, v1, Lcom/a/a/b;->JP:I

    .line 336
    const-string v3, "ADRQBX5_"

    iput-object v3, v1, Lcom/a/a/b;->JR:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    :catch_2
    move-exception v3

    .line 342
    :try_start_5
    const-string v3, "com.tencent.mtt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 343
    const/4 v3, 0x2

    iput v3, v1, Lcom/a/a/b;->JP:I

    .line 344
    const-string v3, "ADRQB_"

    iput-object v3, v1, Lcom/a/a/b;->JR:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    :catch_3
    move-exception v3

    .line 350
    :try_start_6
    const-string v3, "com.tencent.mtt.x86"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 351
    const/4 v3, 0x2

    iput v3, v1, Lcom/a/a/b;->JP:I

    .line 352
    const-string v3, "ADRQB_"

    iput-object v3, v1, Lcom/a/a/b;->JR:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    .line 358
    :try_start_7
    const-string v3, "http://mdc.html5.qq.com/d/directdown.jsp?channel_id=10318"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/a/a/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/a/a/c;

    move-result-object v3

    .line 359
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/a/a/c;->JS:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 361
    iget-object v3, v3, Lcom/a/a/c;->JS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 362
    const/4 v2, 0x2

    iput v2, v1, Lcom/a/a/b;->JP:I

    .line 363
    const-string v2, "ADRQB_"

    iput-object v2, v1, Lcom/a/a/b;->JR:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    .line 381
    :catch_6
    move-exception v0

    goto :goto_2
.end method
